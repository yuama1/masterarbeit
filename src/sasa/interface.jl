# calculate interface area and interface residues between two peptide chains
# Interface atoms are atoms with a non-zero Buried Surface Area(BSA)
# Interface residues are residues with a non-zero Buried Surface Area(BSA) 

# To calculate Buried Surface Area(BSA) for each atom, first calculate its solvent accessible surface area(SASA) when stand alone as a peptide,
# Then calculate its solvent accessible surface area(SASA) as a complex
# The difference is the Buried Surface Area(BSA)
using Base.Threads: @threads, @spawn
export Interface, interface

struct Interface
        area::Float64
        #DataFrame: residue_id, residue_name, chain, sasa_per_residue, is_buried(Bool)
        residues::DataFrame
end

function count_points(atom::DataFrameRow, points::Vector{SVector{3,Float64}}, neighbours::DataFrame, n::Vector{Base.Threads.Atomic{Int64}}, probe_radius::Float64, i::Int64)
        """
        :param n::Vector{Int64} n[1] is for stand alone, n[2] is for complex

        """
        @threads for point in points
                #calculate cordinates of the point
                cordinate = (point * (atom[:radii] + probe_radius)) + atom[:r]
                
                for neighbour in eachrow(neighbours)
                        # if euclidean distance to neighbouring atom is less than the radius(probe_radius included) 
                        # of the neighbouring atom,this point is buried
                        if (euclidean(cordinate, neighbour[:r]) - neighbour[:radii] - probe_radius) < 0.001
                                Threads.atomic_add!(n[i],1)
                                break
                        end
                end
        end        
end

function calculate_residue_bsa(atoms::DataFrame)
        dropmissing!(atoms)
        #Buried Surface Area, Å² 
        residue_bsa = Vector{Float64}()
        atoms.insertioncode .= ' '
        
        #initialization
        residue_id = atoms[1,:residue_id]
        insertioncode = atoms[1,:properties]["insertion_code"]
        bsa::Float64 = 0.0
        for atom in eachrow(atoms)
                atom[:insertioncode] = atom[:properties]["insertion_code"]
                if (atom[:residue_id] == residue_id) && (atom[:insertioncode] == insertioncode)
                        bsa += atom[:sasa_for_stand_alone_peptide] - atom[:sasa_for_complex]
                else
                        push!(residue_bsa, bsa)
                        residue_id = atom[:residue_id]
                        insertioncode = atom[:insertioncode]
                        bsa = atom[:sasa_for_stand_alone_peptide] - atom[:sasa_for_complex]
                end
        end
        push!(residue_bsa,bsa)
        
        df = unique(select(atoms, [:residue_id, :insertioncode, :residue_name, :chain]))
        insertcols!(df, :residue_bsa => residue_bsa)
end

function is_interface_residue(bsa::Float64)
        if bsa != 0.0
                return true
        else
                return false
        end
end

function get_interface_residue(df::DataFrame)
        transform!(df, [:residue_bsa] => ByRow((x)->is_interface_residue(x)) .=> :is_interface_residue)
        df[df.is_interface_residue .== true,:]
end

#for docking results/biological assemlies with two biological units
#atoms contains position information of the docking result

function interface(atoms::DataFrame, a::String, b::String, details = false) 
        num_points::Int64 = 1000
        probe_radius::Float64 = 1.4

        #make a copy of atoms
        atoms= remove_solvent(atoms)
        
        # Drop some columns for effiency.
        select!(atoms,Not([:atomtype, :v, :F, :has_velocity, :has_force, :frame_id]))

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

        #hash each atom to its hashbox 
        transform!(atoms, :r => ByRow(x -> get_hash_id(x, hash_grid_origin, grid_size)) .=> :hash_id)
        
        #for each atom, find its neighbour, and see if their 
        transform!(atoms, [:number, :r, :radii, :hash_id] => ByRow((w,x,y,z) -> get_neighbours(atoms,w,x,y,z,probe_radius)) .=> :neighbours)

        #calculate cordinates of points on a sphere with radius 1
        points = fibonacci_lattice(num_points)
        
        atoms.sasa_for_complex = missings(Float64, nrow(atoms))
        atoms.sasa_for_stand_alone_peptide = missings(Float64, nrow(atoms))

        @threads for atom in eachrow(atoms)
                n = [Threads.Atomic{Int}(0),Threads.Atomic{Int}(0),Threads.Atomic{Int}(0)]

                neighbouring_atoms = atoms[in(atom[:neighbours]).(atoms.number),:]
                neighbouring_atoms_in_chain1 = neighbouring_atoms[occursin(a).(neighbouring_atoms.chain), : ]
                neighbouring_atoms_in_chain2 = neighbouring_atoms[occursin(b).(neighbouring_atoms.chain), : ]

                unit_area = 4π * (atom[:radii] + probe_radius)^2/num_points

                if occursin(atom[:chain],a)
                        count_points(atom,points,neighbouring_atoms,n,probe_radius,1)
                        area = (num_points - n[1][]) * unit_area
                        atom[:sasa_for_complex] = area

                        count_points(atom,points,neighbouring_atoms_in_chain1,n,probe_radius,2)
                        area = (num_points - n[2][]) * unit_area
                        atom[:sasa_for_stand_alone_peptide] = area
                elseif occursin(atom[:chain],b)
                        count_points(atom,points,neighbouring_atoms,n,probe_radius,1)
                        area = (num_points - n[1][]) * unit_area
                        atom[:sasa_for_complex] = area

                        count_points(atom,points,neighbouring_atoms_in_chain2,n,probe_radius,3)
                        area = (num_points - n[3][]) * unit_area
                        atom[:sasa_for_stand_alone_peptide] = area
                end
        end

        area = (sum(skipmissing(atoms.sasa_for_stand_alone_peptide)) - sum(skipmissing(atoms.sasa_for_complex))) / 2

        if details == false
                # atoms.sasa_for_stand_alone_peptide = vcat(sasa_stand_alone_part1, sasa_stand_alone_part2)
                df = get_interface_residue(calculate_residue_bsa(atoms))
                return Interface(area, df)
  
        else
                return Interface(area, select!(atoms,Not([:radii,:hash_id])))
        end
end

interface(m::PDBMolecule) = interface(m.atoms, m.chains[1].name, m.chains[2].name)

interface(atoms::DataFrame) = interface(atoms, unique!(atoms[:,:chain])[1], unique!(atoms[:,:chain])[2])