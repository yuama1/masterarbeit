function reindex(path::String,tmppath::String)
        (tmppath, tmpio) = mktemp()
        open(path) do io
                counter::Int64 = 1
                for line in eachline(io, keep = true)
                        if findfirst(r"^ATOM ", line) === nothing && findfirst(r"^HETATM ", line) === nothing
                                write(tmpio, line)
                        else
                                line = line[1:6] * string_concatenate_fix_length(counter) * line[12:end]
                                write(tmpio, line)
                                counter += 1
                        end
                end
        end
        close(tmpio)
        mv(tmppath, path, force=true)
        println("done!")
end

function string_concatenate_fix_length(idx::Int64)
                idx_s = string(idx)
                
                for i in 1:(5-lastindex(idx_s))
                        idx_s = " " * idx_s
                end
        return idx_s
end

path = "C:/Users/yy_ma/Documents/PDB_Assembly/"
for f in readdir(path)
        tmp = f[1:4] * "H" * f[6:end]
        reindex(joinpath(path,f),tmp)
end