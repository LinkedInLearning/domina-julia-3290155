using DataFrames

df_estudiantes = DataFrame(
    nombre=["Luis", "Ana", "Sebastián", "Sofía", "Mateo", "Camila", "Valentín", "Isabella", "Lucía", "Diego", "Valeria"],
    nota=[45, 70, 85, 73, 49, 89, 90, 63, 71, 76, 56]
)

df_orden = sort(df_estudiantes, :nota, rev=true)

println(df_orden)
