using Clustering
using Plots
using Random

Random.seed!(123)
datos = hcat(randn(2, 100), 2 .+ randn(2, 100))

numero_clusteres = 2
resultados = kmeans(datos, numero_clusteres)

etiquetas = resultados.assignments
centroide = resultados.centers

scatter(datos[1, :], datos[2, :], group=etiquetas, legend=false, marker=:auto, size=(600, 400))
scatter!(centroide[1, :], centroide[2, :], color=:green, markersize=8, label="Centroides")
xlabel!("X")
ylabel!("Y")
title!("Clústeres k-mean")