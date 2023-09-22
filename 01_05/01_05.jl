mi_tupla = (2, 2.5, "pera")
primer_item = mi_tupla[1]
println(primer_item)

mi_arreglo = [1, 2, 3, 4, 5]

mi_arreglo[1] = 10
push!(mi_arreglo, 6)
println(mi_arreglo)

item = pop!(mi_arreglo)
println(item)