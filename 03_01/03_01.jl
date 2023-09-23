using DataFrames

df_estudiantes = DataFrame(
    nombre=["Luis", "Ana", "Sebastián", "Sofía", "Mateo", "Camila", "Valentín", "Isabella", "Lucía", "Diego", "Valeria"],
    nota=[45, 70, 85, 73, 49, 89, 90, 63, 71, 76, 56]
)

deleteat!(df_estudiantes, findall(df_estudiantes.nombre .== "Sebastián"))

println(df_estudiantes)