frase = "La programación es el arte de crear soluciones con código"
subcadena = "arte"

if occursin(subcadena, frase)
    println("La palabra $subcadena esta en la frase.")
else
    println("La palabra  $subcadena no está en la frase")
end

if contains(frase, subcadena)
    println("La palabra $subcadena esta en la frase.")
else
    println("La palabra  $subcadena no está en la frase")
end