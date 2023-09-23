using DataFrames

df = DataFrame(
    nombre=["Luis", "Ana", "Sebastián", "Sofía", "Mateo", "Camila", "Valentín", "Isabella", "Lucía", "Diego", "Valeria"],
    edad=[15, 30, 32, 18, 47, 23, 20, 35, 17, 76, 14],
    ciudad=["Alajuela", "Cartago", "Heredia", "Alajuela", "Alajuela", "Heredia", "Alajuela", "Heredia", "Cartago", "Cartago", "Cartago"]
)

grupo_df = groupby(df, :ciudad)

grupo_alajuela = grupo_df[1]
grupo_cartago  = grupo_df[2]
grupo_heredia  = grupo_df[3]
println(grupo_alajuela)
println(grupo_cartago)
println(grupo_heredia)
