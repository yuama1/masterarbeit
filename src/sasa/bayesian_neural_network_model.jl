@model function bayes_nn(X, y, n_weights=length(_weights))
	weights ~ filldist(Normal(0, 5), n_weights)
	bnn = reconstruct(weights)
	logP = logsoftmax(bnn(X))
	for i in 1:length(y)
		y[i] ~ LogCategorical(logP[:,i])
	end
end

Random.seed!(1)

chain = let data_train = (data.X_train, Flux.onecold(data.Y_train))
        sample(bayes_nn(data_train...), HMC(1e-2, 4), 200; init_theta=_weights)
end

let log_density = vec(only(get(chain, :log_density)))
        plot(log_density; label=nothing, xlabel="Sample", ylabel="Log-joint")
end

x = get(chain, section = :parameters)

logitP_list = let samples = Array(chain), n_warmup = 100, n_thinning = 10
	
	weights_list = [samples[i,:] for i in n_warmup+1:n_thinning:size(samples, 1)]
	logitP_list = []
	for weights in weights_list
		bnn = reconstruct(weights)
		logitP = bnn(data.X_test)
		push!(logitP_list, logitP)
	end
	logitP_list
end

mean(Flux.onecold(mean(softmax.(logitP_list))) .== Flux.onecold(data.Y_test))
