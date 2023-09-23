using DataFrames

df_cliente = DataFrame(
nombre=["Luis", "Ana", "Sebastián", "Sofía", "Mateo", "Camila", "Valentín", "Isabella", "Lucía", "Diego", "Valeria"],
compra=[8500, 11000, 9200, 13500, 7800, 10500, 8800, 12200, 10000, 7500, 12000],
ciudad=["Alajuela", "Cartago", "Heredia", "Alajuela", "Alajuela", "Heredia", "Alajuela", "Heredia", "Cartago", "Cartago", "Cartago"]
)
println(df_cliente)

(num_filas, num_columnas) = size(df_cliente)
println("Número de filas=$num_filas")
println("Número de Columnas=$num_columnas")

nombres_columnas = names(df_cliente)
println("Los nombres de las columnas son: $nombres_columnas")

tipos_de_datos = eltype.(eachcol(df_cliente))
println("Los tipos de datos son: $tipos_de_datos")

estadisticas = describe(df_cliente)
println(estadisticas)