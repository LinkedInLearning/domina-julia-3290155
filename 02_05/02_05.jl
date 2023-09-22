using DataFrames

df = DataFrame(
    nombre=["Luis", missing, "Sebastián", "Sofía", missing, "Camila", "Valentín", "Isabella", missing, "Diego", "Valeria"],
    edad=[15, 30, 32, 41, 47, missing, 20, 18, 17, 25, missing],
    ciudad=["Buenos Aires", missing, "Ciudad de México", missing, "Alajuela", "Nueva York", missing, "Río de Janeiro", "Montevideo", "Miami", "Vancouver"])

total_faltantes = 0

for columna in eachcol(df)
    global total_faltantes += sum(ismissing.(columna))
end

println("El total de valores faltantes en el dataframe es: $total_faltantes")
