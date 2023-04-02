path1 = "C:/Users/yy_ma/Documents/PDB_Assembly_Data_assecceries/57233dimer_from_rcsb_pdb/207552homo/"
path2 = "C:/Users/yy_ma/Documents/PDB_Assembly_Data_assecceries/57233dimer_from_rcsb_pdb/52947hetero"

const rx1 = r".+,.+,\"A2\""
const rx2 = r".+,.+,\"A1, B1\""
homo_dimers = Dict{String,Char}()
hetero_dimers = Dict{String,Char}()

files = readdir(path1)
for file in files
        fh = open(joinpath(path1,file))
        for l in readlines(fh)
                if match(rx1, l) !== nothing
                        homo_dimers[l[2:5]] = l[7]
                end
        end
end

files = readdir(path2)
for file in files
        fh = open(joinpath(path2,file))
        for l in readlines(fh)
                if match(rx2, l) != nothing
                        hetero_dimers[l[2:5]] = l[7]
                end
        end
end

open("homodimers.txt","w") do f
        writedlm(f,homo_dimers)
end

open("hetero_dimers.txt","w") do f
        writedlm(f,hetero_dimers)
end

path = "C:/Users/yy_ma/Documents/PDB_Assembly_Data_assecceries/57233dimer_from_rcsb_pdb/57234dimer下载日志log.txt"

m = readlines(path)

unique!(m)
v = Vector{String}(undef,0)
for i in m
        push!(v,i[52:55])
end

open("failed_entries.txt","w") do io
        writedlm(io,v)
end