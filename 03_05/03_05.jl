using DataFrames

df_cliente = DataFrame(
    nombre=["Luis", "Ana", "Sebastián", "Sofía", "Mateo", "Camila", "Valentín", "Isabella", "Lucía", "Diego", "Valeria"],
    compra=[8500, 11000, 9200, 13500, 7800, 10500, 8800, 12200, 10000, 7500, 12000],
    ciudad=["Alajuela", "Cartago", "Heredia", "Alajuela", "Alajuela", "Heredia", "Alajuela", "Heredia", "Cartago", "Cartago", "Cartago"]
)

descuento_compra(compra) = compra > 10000 ? compra - compra * 0.05 : compra

transform!(df_cliente, :compra => ByRow(descuento_compra) => :compra)

println(df_cliente)