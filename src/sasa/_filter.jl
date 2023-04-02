
p = "C:\\Users\\yy_ma\\Documents\\PDB_Assembly1_with_hydrogen_reindex_13974\\"
pa = "D:\\Masterarbeit\\Data\\Dimers_from_RCSB_PDB_AssemblyID_1_with_hydrogen_reindex\\"
path = "C:\\Users\\yy_ma\\Documents\\PDB_Assembly_Data_assecceries/57234dimer_from_rcsb_pdb/AssemblyID_1_39950.txt"

va = readdir(p)
vb = readdir(pa)

va1 = Vector{String}(undef, 0)
for f in va
        push!(va1,f[2:5])
end
unique!(va1)

vb1 = Vector{String}(undef, 0)
for f in vb
        push!(vb1,f[2:5])
end
vb1
unique!(vb1)

vc = vcat(va1,vb1)
vc1=unique(vc)

v = filter(e->e∈va,vb)

using DelimitedFiles
open("C:/Users/yy_ma/Documents/PDB_Assembly_Data_assecceries/57234dimer_from_rcsb_pdb/3846_dimers_to_remove.txt","w") do io
        writedlm(io,v)
end

open("remove.sh","w") do io
        writedlm(io,v)
end