using XLSX, DataFrames

df = DataFrame(XLSX.readtable("./training_data_predator_2.xlsx", "Sheet1"))

pdb = df[1,:pdb_code]
css_es = Vector{Float64}()
push!(css_es,df[1,:css])

row_index_that_should_be_1 = Vector{Int64}()
for i in 2:nrow(df)
        if df[i,:pdb_code] == pdb
                push!(css_es,df[i, :css])
        else
                index = i - length(css_es) + argmax(css_es) - 1
                df[index, :css] = 1.0
                pdb = df[i,:pdb_code]
                css_es = Vector{Float64}()
                push!(css_es, df[i,:css])
        end
end

index = nrow(df) - length(css_es) + argmax(css_es) - 1
df[index, :css] = 1.0

XLSX.writetable("training_data_predator_2_processed_.xlsx",df)


