numero_float = 3.14
println(typeof(numero_float))

numero_int = Int(round(numero_float))
println(numero_int)
println(typeof(numero_int))

numero_int_float = Float64(23)
println(numero_int_float)

texto = string(456)
println(texto)
println(typeof(texto))

numero_texto = "34.6"
numero = parse(Float64, numero_texto)
println(numero)

using Dates
fecha_texto = "1985-09-24"
fecha = Date(fecha_texto)
println(fecha)