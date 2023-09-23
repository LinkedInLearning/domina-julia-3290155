using Clustering
using Plots
using Random

Random.seed!(123)
datos = hcat(randn(2, 100), 2 .+ randn(2, 100))

numero_clusteres = 2