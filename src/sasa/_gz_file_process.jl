using DelimitedFiles
path = "C:/Users/yy_ma/Documents/PDB_Assembly_Data/86000"
files = readdir(path)

const labels = ["ala", "cys", "asp", "glu", "phe", "gly", "his", "ile", "lys", "leu", "met", "asn", "pro", "gln", "arg", "ser", "thr", "val", "trp", "tyr"]

fname = "1a9x.pdb1.gz"


files_with_modified_residue = Vector{String}(undef, 0)
files_with_DNA_or_RNA = Vector{String}(undef, 0)
modified_residues = Vector{String}(undef,0)
mod_res = Dict{String,String}()
DNA_or_RNA = Vector{String}(undef,0)

for f in files
        modified = false
        not_pure_protein_complex = false
        fh = GZip.open(joinpath(path,f))
        for l in eachline(fh)  
                if startswith(l, "SEQRES")
                        line = l
                        v_res = split(line[20:70])
                        for res in v_res
                                if res ∉ uppercase.(labels)
                                        if length(res) != 3
                                                not_pure_protein_complex = true
                                                push!(DNA_or_RNA,res)
                                        elseif length(res) == 3 
                                                modified = true
                                                # push!(modified_residues, res)
                                                mod_res[res] = f
                                        end
                                end
                        end
                end
        end
        if modified
                push!(files_with_modified_residue, f)
                println(f)
        end
        if not_pure_protein_complex
                push!(files_with_DNA_or_RNA, f)
        end

        open("pdb_8_6000_structures_with_modified_residue.txt","w") do f
                writedlm(f, files_with_modified_residue)
        end
        open("pdb_8_6000_structures_with_DNA_or_RNA.txt","w") do f
                writedlm(f, files_with_DNA_or_RNA)
        end
        open("pdb_8_6000_modified_residues.txt","w") do f
                # writedlm(f,modified_residues)
                writedlm(f,mod_res)
        end
        open("pdb_8_6000_DNA_or_RNA_mononers.txt","w") do f
                writedlm(f,DNA_or_RNA)
        end
end

using BenchmarkTools

@btime modified_residues(path,fname)
#2.088 ms (11444 allocations: 671.01 KiB)




function f1(path,fname)
        fh = GZip.open(joinpath(path,fname))
        s = load_pdb(fh)
end

function f2(path,fname2)
        s = load_pdb(joinpath(path,fname2))   
end

@btime f1(path, fname);
# 13.352 ms (95500 allocations: 7.14 MiB)

@btime f2(path, fname2);
#11.671 ms (92438 allocations: 6.90 MiB)
