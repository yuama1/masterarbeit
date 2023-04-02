export residue_residue_pairs

function get_neighbouring_residues(atoms::DataFrame, r1::SVector, hash_id::SVector, chain::String, a::String, b::String)
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

        # neighbouring atoms should be atoms from the second half of the complex
        neighbours = neighbours[occursin(counterpart).(neighbours.chain), :]
        
        # neighbouring atoms should be in the 27 grids
        neighbours = atoms[in(n_table).(atoms.hash_id), : ]

        neighbours.within5A .= false
        neighbours.insertioncode .= ' '

        # neighbours should also be atoms within 5A
        for neighbour in eachrow(neighbours)
                if euclidean(r1, neighbour[:r]) - 5 < 0.01
                        neighbour[:within5A] = true
                        neighbour[:insertioncode] = neighbour[:properties]["insertion_code"]
                end
        end
        unique!(neighbours[neighbours.within5A .== true, :],[:residue_id,:insertioncode,:residue_name,:chain])
end

function residue_residue_pairs(atoms::DataFrame, a::String, b::String)
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
        # transform!(atoms, [:r, :hash_id, :chain] => ByRow((x,y,c) -> get_neighbouring_residues(atoms,x,y,c,a,b)) .=> :paired_residues)
        residue_pairs = DataFrame([[],[],[],[],[],[],[],[]],[:residue_id,:residue_name,:insertioncode, :chain,:part1_chain,:part1_residue_id,:part1_insertioncode,:part1_residue_name])
        for atom in eachrow(atoms)
                df = get_neighbouring_residues(atoms,atom[:r],atom[:hash_id],atom[:chain],a,b)

                df.part1_chain .= atom[:chain]
                df.part1_residue_id .= atom[:residue_id]
                df.part1_insertioncode .= atom[:properties]["insertion_code"]
                df.part1_residue_name .= atom[:residue_name]
                residue_pairs = vcat(residue_pairs,select!(df,[:part1_chain,:part1_residue_id,:,part1_insertioncode,:part1_residue_name,:chain,:residue_id,:insertioncode,:residue_name]))
        end
        return unique!(residue_pairs)
                
end

residue_residue_pairs(m::PDBMolecule) = residue_residue_pairs(m.atoms, m.chains[1].name, m.chains[2].name)