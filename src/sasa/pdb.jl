using BioStructures: read, collectatoms, collectchains, collectresidues, PDB

export load_pdb

function parse_element_string(es::String)
    result = Elements.Unknown

    # handle special cases
    if es == "D"
        result = Elements.H
    elseif es == "X"
        result = Elements.Unknown
    else
        try
            result = parse(Elements, es)
        catch e
            # @warn "BiochemicalAlgorithms::PDB::parse_element_string: could not parse element from $(es); returning Unknown"
        end
    end

    return result
end

function extract_element(pdb_element::String, atom_name::String)
    element = Elements.Unknown

    # if the element is non-empty, it takes precedence
    if !isempty(strip(pdb_element))
        element = parse_element_string(pdb_element)
    end

    if element == Elements.Unknown && pdb_element != "X"
        # this approach is taken from the original BALL PDB parser

        # try to reconstruct the element from the atom name
        # NOTE: this leads to wrong results if names not compatible with the PDB standard are used, 
        #       such as HE12, which would be interpreted as He
        if (atom_name[1] == ' ' || isdigit(atom_name[1]))
            if atom_name[2] == ' '
                # @warn "BiochemicalAlgorithms::PDB::extract_element: could not parse element from atomname $(atom_name); returning Unknown"
                element = Elements.Unknown
            else
                element = parse_element_string(string(atom_name[2]))
            end
        else
            element = parse_element_string(atom_name[1:2])
        end
    end

    return element
end

# Note: models are stored as frames
# TODO: how to handle disordered atoms properly?
function load_pdb(fname::String, T=Float32)
    # first, read the structure using BioStructures.jl
    # orig_pdb = read(fname, PDB)
    orig_pdb = read(fname, PDB, remove_disorder = true)
    len = length(orig_pdb)
    orig_chains = if len == 2
        vcat(collectchains(orig_pdb[1]),collectchains(orig_pdb[2]))
    else
        collectchains(orig_pdb)
    end
    chainA = getproperty(orig_chains[1], :id)
    chainB = getproperty(orig_chains[2], :id)
    orig_df = if len == 2
        orig_df1 = DataFrame(collectatoms(orig_pdb[1]))
        orig_df2 = DataFrame(collectatoms(orig_pdb[2]))
        
        if chainA == chainB
            if chainA == "B"
                orig_df2.chainid .= "C"
                chainB = "C"
            else
                orig_df2.chainid .= "B"
                chainB = "B"
            end
        end
        vcat(orig_df1, orig_df2)
    else
        DataFrame(collectatoms(orig_pdb))
    end

    # then, convert to our representation

    ### convert the atom positions
    r = Vector3{T}.(T.(orig_df.x), T.(orig_df.y), T.(orig_df.z))

    ### extracting the elements is a little more complicated than it could be,
    ### as the DataFrame-conversion strips whitespaces from atom names
    # elements = extract_element.(orig_df.element, getproperty.(collectatoms(orig_pdb, expand_disordered = true), :name))
    elements = if len == 2
        extract_element.(orig_df.element, getproperty.(vcat(collectatoms(orig_pdb[1]),collectatoms(orig_pdb[2])), :name))
    else
        extract_element.(orig_df.element, getproperty.(collectatoms(orig_pdb), :name))
    end
    atoms = DataFrame(
        number=orig_df.serial, 
        name=orig_df.atomname,
        element=elements
    )

    insertcols!(atoms, :atomtype => "")
    atoms.r = r
    atoms.v .= Ref(Vector3{T}(0.0, 0.0, 0.0))
    atoms.F .= Ref(Vector3{T}(0.0, 0.0, 0.0))
    atoms.has_velocity .= Ref(false)
    atoms.has_force .= Ref(false)
    atoms.frame_id = orig_df.modelnumber

    atoms.residue_id = orig_df.resnumber
    atoms.residue_name= orig_df.resname
    atoms.chain = orig_df.chainid

    # note: we will remove this column as soon as we have filtered out alternates
    # atoms.altlocid = orig_df.altlocid

    # convert other columns of interest to atom properties
    atoms.properties = Properties.(
                    collect(
                            zip(
                                Pair.("tempfactor",            orig_df.tempfactor),
                                Pair.("occupancy",             orig_df.occupancy),
                                Pair.("is_hetero_atom",        orig_df.ishetero),
                                Pair.("insertion_code",        orig_df.inscode),
                                Pair.("alternate_location_id", orig_df.altlocid)
                            )
                    )
                )
                
    bonds = DataFrame(Bond[])

    chains = Vector{PDBChain}()
    orig_chains = if len == 2
        vcat(collectchains(orig_pdb[1]),collectchains(orig_pdb[2]))
    else
        collectchains(orig_pdb)
    end
    
    for i in 1:2
        # orig_residues = collectresidues(orig_chains[i])
        orig_residues = collectresidues(orig_chains[i],expand_disordered=true)

        fragments = DataFrame(
            number = getproperty.(orig_residues, :number),
            name   = getproperty.(orig_residues, :name),
            chain_id = if i == 1
                repeat([chainA], length(orig_residues))
            else
                repeat([chainB], length(orig_residues))
            end
        )
        if i == 1
            push!(chains, PDBChain(chainA, fragments))
        else
            push!(chains, PDBChain(chainB, fragments))
        end
    end
    
    return PDBMolecule{T}(orig_pdb.name, atoms, bonds, chains)
end

