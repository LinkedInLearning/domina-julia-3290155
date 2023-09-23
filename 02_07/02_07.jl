using DataFrames, Statistics

df = DataFrame(
    nombre=["Luis", "Ana", "Sebastián", "Sofía", "Mateo", "Camila", "Valentín", "Isabella", "Lucía", "Diego", "Valeria"],
    edad=[15, 30, 32, missing, 47, 23, 20, missing, 17, missing, 14],
    ciudad=["Buenos Aires", "Lima", "Ciudad de México", "Santiago", "Alajuela", "Nueva York", "Toronto", "Río de Janeiro", "Montevideo", "Miami", "Vancouver"])

total_faltantes = 0

for columna in eachcol(df)
    global total_faltantes += sum(ismissing.(columna))
end

println("El total de valores faltantes en el dataframe es: $total_faltantes")

media_edad =  round(mean(skipmissing(df.edad)))
println("La media de edad es: $media_edad")

df.edad .=  coalesce.(df.edad, media_edad)

println(df)