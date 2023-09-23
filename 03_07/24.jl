using DataFrames
using CSV
using Plots
using GLM

ruta_archivo = "/Users/linkedin/Documents/03_07/examenes.csv"
df = CSV.read(ruta_archivo, DataFrame)

x = df.Horas
y = df.Puntaje

modelo = lm(@formula(y ~ x), DataFrame(x=x, y=y))

coeficiente_intercepcion = coef(modelo)[1]
coeficiente_pendiente = coef(modelo)[2]

scatter(x, y, label="Datos", legend=:topright)
plot!(x, coeficiente_intercepcion .+ coeficiente_pendiente * x, label="Regresión Lineal", linewidth=2)
xlabel!("Horas de estudio")
ylabel!("Puntación")
title!("Nota obtenidas - Horas de estudio")