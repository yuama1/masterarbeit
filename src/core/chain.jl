using DataFrames

export AbstractChain, PDBChain, ProteinChain, HeteroAtomChain, NucleotideChain, fragments

abstract type AbstractChain end

struct PDBChain <: AbstractChain
    name::String
    fragments::DataFrame

    function PDBChain(name="", fragments=DataFrame(Fragment[]))
        new(name, fragments)
    end
end

struct ProteinChain <: AbstractChain
    name::String
    residues::DataFrame

    function ProteinChain(name="", residues=DataFrame(Residue[]))
        new(name, residues)
    end
end

struct HeteroAtomChain <: AbstractChain
    name::String
    fragments::DataFrame

    function HeteroAtomChain(name="", fragments=DataFrame(Fragment[]))
        new(name, fragments)
    end
end

struct NucleotideChain <: AbstractChain
    name::String
    nucleotides::DataFrame

    function NucleotideChain(name="", nucleotides=DataFrame(Nucleotide[]))
        new(name, nucleotides)
    end
end

fragments(c::PDBChain)        = c.fragments
fragments(c::ProteinChain)    = c.residues
fragments(c::HeteroAtomChain) = c.fragments
fragments(c::NucleotideChain) = c.nucleotides
