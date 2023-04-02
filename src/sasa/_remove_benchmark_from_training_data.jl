using DelimitedFiles

benchmarks = readdlm("benchmark.txt")

training_data = readdlm("AssemblyID_1_39950.txt",',')

v = filter(e->e∈benchmarks,training_data)
# 1 element 1e96