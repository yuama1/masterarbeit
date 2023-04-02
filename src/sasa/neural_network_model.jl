using DrWatson
using Random, XLSX, MLDataUtils, Distributions, Flux, DataFrames
using Turing, ReverseDiff; Turing.setadbackend(:reversediff)
using Plots; theme(:bright; size=(600, 300))

df1 = DataFrame(XLSX.readtable("./training_data_predator_0_processed_without_float_css_.xlsx", "Sheet1", enable_cache=false))
df2 = DataFrame(XLSX.readtable("./training_data_predator_1_processed_without_float_css_.xlsx", "Sheet1", enable_cache=false))
data_raw = vcat(df1, df2)
begin 
        # data_raw[!,:inte_area] = parse.(Float64, data_raw[!,:inte_area])

        data_raw[!, :ala] = Float64.(data_raw[!, :ala])
        data_raw[!, :cys] = Float64.(data_raw[!, :cys])
        data_raw[!, :asp] = Float64.(data_raw[!, :asp])
        data_raw[!, :glu] = Float64.(data_raw[!, :glu])
        data_raw[!, :phe] = Float64.(data_raw[!, :phe])
        data_raw[!, :gly] = Float64.(data_raw[!, :gly])
        data_raw[!, :his] = Float64.(data_raw[!, :his])
        data_raw[!, :ile] = Float64.(data_raw[!, :ile])
        data_raw[!, :lys] = Float64.(data_raw[!, :lys])
        data_raw[!, :leu] = Float64.(data_raw[!, :leu])
        data_raw[!, :met] = Float64.(data_raw[!, :met])
        data_raw[!, :asn] = Float64.(data_raw[!, :asn])
        data_raw[!, :pro] = Float64.(data_raw[!, :pro])
        data_raw[!, :gln] = Float64.(data_raw[!, :gln])
        data_raw[!, :arg] = Float64.(data_raw[!, :arg])
        data_raw[!, :ser] = Float64.(data_raw[!, :ser])
        data_raw[!, :thr] = Float64.(data_raw[!, :thr])
        data_raw[!, :val] = Float64.(data_raw[!, :val])
        data_raw[!, :trp] = Float64.(data_raw[!, :trp])
        data_raw[!, :tyr] = Float64.(data_raw[!, :tyr])
        data_raw[!, :mse] = Float64.(data_raw[!, :mse])
        data_raw[!, :tpo] = Float64.(data_raw[!, :tpo])
        data_raw[!, :cso] = Float64.(data_raw[!, :cso])
        data_raw[!, :pca] = Float64.(data_raw[!, :pca])
        data_raw[!, :cme] = Float64.(data_raw[!, :cme])
        data_raw[!, :kcx] = Float64.(data_raw[!, :kcx])
end

data = let data = copy(data_raw)
        Random.seed!(1)
    
        # Encode the species columns
        data[!,:C1] = [r.css == "1" ? 1.0 : 0.0 for r in eachrow(data)]
        data[!,:C2] = [r.css == "0" ? 1.0 : 0.0 for r in eachrow(data)]
    
        # Delete the old column
        select!(data, Not([:css]))
    
        # `DataFrame` to `Matrix`
        features = [:ala, :cys, :asp, :glu, :phe, :gly, :his, :ile, :lys, :leu, :met, :asn, :pro, :gln, :arg, :ser, :thr, :val, :trp, :tyr, :mse, :tpo, :cso, :pca, :cme, :kcx]
        target = [:C1, :C2]
        X, Y = Matrix(data[:,features])', Matrix(data[:,target])'
    
        # Shuffle
        X, Y = shuffleobs((X, Y))
    
        # Split train and test
        (X_train, Y_train), (X_test, Y_test) = splitobs((X, Y); at=0.8)
        X_train, Y_train, X_test, Y_test = Matrix(X_train), Matrix(Y_train), Matrix(X_test), Matrix(Y_test)
        y_train, y_test = Flux.onecold(Y_train), Flux.onecold(Y_test)
    
        # Put in a `NamedTuple`
        @ntuple(X_train, Y_train, y_train, X_test, Y_test, y_test)
end


make_nn(h=20) = Chain(Dense(26, h, relu),Dense(h, h, relu),Dense(h, h, relu),Dense(h, 2))


Random.seed!(1)

nn = make_nn(8)

loss(x, y) = Flux.logitcrossentropy(nn(x), y)

let ps = Flux.params(nn), data_train = (data.X_train, data.Y_train), lr = 2f-3
        
        losses_train = [loss(data_train...)]
        for i_epoch in 1:5000
                Flux.train!(loss, ps, [data_train], Descent(lr))
                push!(losses_train, loss(data_train...))
        end
        
        plot(losses_train; label=nothing, xlabel="Epoch", ylabel="Loss")
end

let P_test = softmax(nn(data.X_test))
        mean(Flux.onecold(P_test) .== data.y_test)
end

_weights, reconstruct = Flux.destructure(nn)

struct LogCategorical{T} <: DiscreteUnivariateDistribution
        logp::T
end

using BSON: @save

@save "nn_0.997.bson" nn

Distributions.logpdf(d::LogCategorical, x::Int) = d.logp[x]