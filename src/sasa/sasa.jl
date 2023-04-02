using Distances

export SASA, sasa

function remove_solvent(atoms::DataFrame)
        atoms[∉(["HOH"]).(atoms.residue_name),:]
end

# 27 grid boxes to search for possible overlapped atoms 
const neighbour_table = [
        SVector(-1.0, -1.0, -1.0),
        SVector( 0.0, -1.0, -1.0),
        SVector( 1.0, -1.0, -1.0),
        SVector(-1.0,  0.0, -1.0),
        SVector( 0.0,  0.0, -1.0),
        SVector( 1.0,  0.0, -1.0),
        SVector(-1.0,  1.0, -1.0),
        SVector( 0.0,  1.0, -1.0),
        SVector( 1.0,  1.0, -1.0),
        
        SVector(-1.0, -1.0,  0.0),
        SVector( 0.0, -1.0,  0.0),
        SVector( 1.0, -1.0,  0.0),
        SVector(-1.0,  0.0,  0.0),
        SVector( 0.0,  0.0,  0.0),
        SVector( 1.0,  0.0,  0.0),
        SVector(-1.0,  1.0,  0.0),
        SVector( 0.0,  1.0,  0.0),
        SVector( 1.0,  1.0,  0.0),

        SVector(-1.0, -1.0,  1.0),
        SVector( 0.0, -1.0,  1.0),
        SVector( 1.0, -1.0,  1.0),
        SVector(-1.0,  0.0,  1.0),
        SVector( 0.0,  0.0,  1.0),
        SVector( 1.0,  0.0,  1.0),
        SVector(-1.0,  1.0,  1.0),
        SVector( 0.0,  1.0,  1.0),
        SVector( 1.0,  1.0,  1.0) 
]

struct SASA
        area::Float64
        #PDBMolecule.atoms(DataFrame) with column names: number, name, element, atomtype, r, residue_id, residue_name, chain, sasa_per_atom
        atoms::DataFrame
end

function is_overlap(number1::Int64, number2::Int64, r1::SVector,r2::SVector,radius1::Float64, radius2::Float64, probe_radius::Float64)
        if number1 == number2
                return false
        else
                return euclidean(r1,r2) - (radius1 + radius2 + 2probe_radius) < 0.001
        end
end

function get_neighbours(atoms::DataFrame, number1::Int64, r1::SVector, radius1::Float64, hash_id::SVector, probe_radius::Float64)
        n_table = Vector{SVector{3,Float64}}(undef,27)
        
        for i in 1:27
                n_table[i] = neighbour_table[i] + hash_id
        end

        #select rows by column value
        neighbours = atoms[in(n_table).(atoms.hash_id),:]

        transform!(neighbours, [:number, :r, :radii] => ByRow((w, x, y) -> is_overlap(number1,w,r1,x,radius1,y,probe_radius)) .=> :neighbour)

        # returns a DataFrame，rows in it are neighbouring atoms of the given atom
        # select rows by column value, then get hash_id column 
        neighbours = neighbours[neighbours.neighbour .== true,:][!,:number]
end

# function count_points(atom::DataFrameRow, points::Vector{SVector{3,Float64}}, neighbours::DataFrame, n::Vector{Int64}, probe_radius::Float64)
#         for point in points
#                 #calculate cordinates of the point
#                 cordinate = (point * (atom[:radii] + probe_radius)) + atom[:r]
                
#                 for neighbour in eachrow(neighbours)
#                         #if euclidean distance to neighbouring atom is less than the radius of the neighbouring atom, 
#                         #this point is buried
#                         if (euclidean(cordinate, neighbour[:r]) - neighbour[:radii] - probe_radius) < 0.001
#                                 n[1] += 1
#                                 break
#                         end
#                 end
#         end        
# end

function sasa(atoms::DataFrame, num_points::Int64=1000, probe_radius::Float64=1.4)
        #make a copy of atoms
        atoms = remove_solvent(atoms::DataFrame)
        n = nrow(atoms)

        #safety threshold
        ϵ = 0.5

        # get_radii returns a DataFrame with a column called radii,  
        get_radii!(atoms)

        # max_radius is the maximum radius of all elements + probe_radius
        max_radius = maximum(atoms[!, :radii]) + probe_radius

        # prepare arguments to build hash grid
        r = reshape(reinterpret(Float32, atoms[!,:r]), (3,:))
        lower_point = SVector(minimum(@view r[1,:]),minimum(@view r[2,:]),minimum(@view r[3,:]))
        hash_grid_origin = lower_point .- ϵ 
        grid_size = 2max_radius

        # Hash each atom to its hashbox 
        # transform!(atoms, :r => ByRow(x -> get_hash_id(x, hash_grid_origin, grid_size)) .=> :hash_id)
        # This is faster
        hgo = [hash_grid_origin for i in 1:n]
        gz = [grid_size for i in 1:n]
        atoms[:,:hash_id] = map(get_hash_id, atoms[!,:r], hgo, gz)

        # For each atom, find its neighbour, returns a list of :number(as identifier for atoms). Then 
        # add this information as a column to DataFrame called :neighbours
        transform!(atoms, [:number, :r, :radii, :hash_id] => ByRow((w,x,y,z) -> get_neighbours(atoms,w,x,y,z,probe_radius)) .=> :neighbours)

        #calculate cordinates of points on a sphere with radius 1
        points = fibonacci_lattice(num_points)
        
        atoms.num_surface_points = missings(Float64, nrow(atoms))
        # surface_areas = Vector{Float64}()
        atoms.surface_areas = missings(Float64, nrow(atoms))

        for atom in eachrow(atoms)
                
                neighbouring_atoms = atoms[in(atom[:neighbours]).(atoms.number),:]
                #surface area of sphere 4πr2, for each point 4πr2/num_points
                unit_area = 4π * (atom[:radii] + probe_radius)^2/num_points

                n = [Threads.Atomic{Int}(0)]
                count_points(atom,points,neighbouring_atoms,n,probe_radius,1)
                atom[:num_surface_points] = n[1][]
                # push!(num_surface_points,n[1][])
                
                surface_area = (num_points - n[1][]) * unit_area
                atom[:surface_areas] = surface_area
                # push!(surface_areas,surface_area)
        end
        
        #add the column num_surface_points (number of surface points) to each atom in DataFrame atoms
        # atoms[!,:num_surface_points] = num_surface_points
        # atoms[!,:surface_areas] = surface_areas

        area = sum(atoms[!,:surface_areas])

        sasa = SASA(area, select(atoms, Not([:num_surface_points])))
end

sasa(molecule::PDBMolecule, num_points::Int64=1000, probe_radius::Float64=1.4)  = sasa(molecule.atoms, num_points, probe_radius)

#use the Fibonacci sphere algorithm/ Fibonacci lattice to distribute n points on a sphere
function fibonacci_lattice(num_points::Int)

        points = SVector{3,Float64}[]

        
    
        for i in 1:num_points
            y = 1 - (i - 1) / (num_points - 1) * 2  # y goes from 1 to -1
            radius = √(1 - y ^ 2)  # radius at y
    
            x = cospi((3 - √5) * (i - 1)) * radius
            z = sinpi((3 - √5) * (i - 1)) * radius
    
            push!(points, SVector(x, y, z))
        end
        return points
end