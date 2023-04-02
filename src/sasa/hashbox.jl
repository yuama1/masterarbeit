using DataFrames

#returns a SVector{3,Float64}
function get_hash_id(cordinate::SVector{3,T} where T <: Number,hash_grid_origin::SVector{3,T} where T <: Number, grid_size::Number) 
        x,y,z = div.(cordinate .- hash_grid_origin, grid_size) .+ 1 # returns results in Float64 type
end


