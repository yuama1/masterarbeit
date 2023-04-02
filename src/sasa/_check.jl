fname = "5xuv.pdb1.gz"
path = "C:/Users/yy_ma/Documents/PDB_Assembly_Data"

fh = GZip.open(joinpath(path,fname))
for l in eachline(fh)  
        if startswith(l, "SEQRES")
                line = l
                v_res = split(line[20:70])
                for res in v_res
                        if res ∉ uppercase.(labels)
                                if length(res) != 3
                                        not_pure_protein_complex = true
                                        println(res * "    1")
                                else
                                        modified = true
                                        println(res * "    2")
                                        push!(modified_residues, res)
                                end
                        end
                end
        end
end

v = vec(readdlm("modified_residues"))
unique!(v)

print(v)