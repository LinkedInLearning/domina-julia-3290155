using DataFrames, Query

df_cliente = DataFrame(
    nombre=["Luis", "Ana", "Sebastián", "Sofía", "Mateo", "Camila", "Valentín", "Isabella", "Lucía", "Diego", "Valeria"],
    compra=[8500, 11000, 9200, 13500, 7800, 10500, 8800, 12200, 10000, 7500, 12000],
    ciudad=["Alajuela", "Cartago", "Heredia", "Alajuela", "Alajuela", "Heredia", "Alajuela", "Heredia", "Cartago", "Cartago", "Cartago"]
)

df_cliente_ciudad = @from fila in df_cliente begin
    @where (fila.ciudad == "Cartago") ||  (fila.ciudad == "Heredia")
    @select {fila.nombre, fila.compra}
end

println(df_cliente_ciudad)