using DataFrames

df_cliente = DataFrame(
    nombre=["Luis", "Ana", "Sebastián", "Sofía", "Mateo", "Camila", "Valentín", "Isabella", "Lucía", "Diego", "Valeria"],
    edad=[15, 30, 32, 18, 47, 23, 20, 35, 17, 76, 14],
    ciudad=["Alajuela", "Cartago", "Heredia", "Alajuela", "Alajuela", "Heredia", "Alajuela", "Heredia", "Cartago", "Cartago", "Cartago"]
)

select!(df_cliente, Not([:"edad"]))

println(df_cliente)