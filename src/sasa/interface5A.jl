# calculate interface area between two peptide chains
# Interface atoms are atoms within 5Å of the other protein/peptide(fnat)
# Interface residues are residues with at least an atom within 5Å of the other protein/peptide(fnat)

export interface5A

function get_interface_residue_5A(atoms::DataFrame)
 
        atoms.is_interface_residue .= false
        atoms.insertioncode .= ' '

        for atom in eachrow(atoms)
                if atom[:is_interface_atom] == true
                        atom[:is_interface_residue] = true
                        atom[:insertioncode] = atom[:properties]["insertion_code"]
                end
        end
        
        unique!(select!(atoms[atoms.is_interface_residue .== true,:],[:residue_id,:insertioncode,:residue_name,:chain]))
end

function is_interface_atom(atoms::DataFrame, r1::SVector, hash_id::SVector, chain::String, a::String, b::String)
        # which part 
        if occursin(chain, a)
                counterpart = b
        else
                counterpart = a
        end

        n_table = Vector{SVector{3,Float64}}(undef,27)
        
        for i in 1:27
                n_table[i] = neighbour_table[i] + hash_id
        end

        # neighbours should be in the 27 grids
        neighbours = atoms[in(n_table).(atoms.hash_id), : ]

        # neighbours should be atoms from the second half of the complex
        neighbours = neighbours[occursin(counterpart).(neighbours.chain), :]

        # neighbours should also be atoms within 5A
        for neighbour in eachrow(neighbours)
                if euclidean(r1, neighbour[:r]) - 5 < 0.01 
                        return true
                        break
                end
        end
        return false
end

function interface5A(atoms::DataFrame, a::String, b::String)
        #make a copy of atoms
        atoms= remove_solvent(atoms)
        
        # Drop some columns for effiency.
        select!(atoms,Not([:atomtype, :v, :F, :has_velocity, :has_force, :frame_id]))

        #safety threshold
        ϵ = 0.5

        # prepare arguments to build hash grid
        r = reshape(reinterpret(Float32, atoms[!,:r]), (3,:))
        lower_point = SVector(minimum(@view r[1,:]),minimum(@view r[2,:]),minimum(@view r[3,:]))
        hash_grid_origin = lower_point .- ϵ 
        grid_size = 5

        #hash each atom to its hashbox 
        transform!(atoms, :r => ByRow(x -> get_hash_id(x, hash_grid_origin, grid_size)) .=> :hash_id)
        
        #for each atom, find its neighbour, and see if their 
        transform!(atoms, [:r, :hash_id, :chain] => ByRow((x,y,c) -> is_interface_atom(atoms,x,y,c,a,b)) .=> :is_interface_atom)
        get_interface_residue_5A(atoms)  
end

interface5A(m::PDBMolecule) = interface5A(m, m.chains[1].name, m.chains[2].name)