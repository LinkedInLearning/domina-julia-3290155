using DataFrames

df_estudiantes = DataFrame(
    nombre=["Luis", "Ana", "Sebastián", "Sofía", "Mateo", "Camila", "Valentín", "Isabella", "Lucía", "Diego", "Valeria"],
    nota=[45, 70, 85, 73, 49, 89, 90, 63, 71, 76, 56]
)

estudiantes_filtrados = filter(fila -> fila.nota < 70, df_estudiantes)

println(estudiantes_filtrados)
