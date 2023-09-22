using DataFrames
using CSV

df = DataFrame(
    nombre=["Luis", "Ana", "Sebastián", "Sofía", "Mateo", "Camila", "Valentín", "Isabella", "Lucía", "Diego", "Valeria"],
    edad=[15, 30, 32, 41, 47, 23, 20, 18, 17, 25, 14],
    ciudad=["Buenos Aires", "Lima", "Ciudad de México", "Santiago", "Alajuela", "Nueva York", "Toronto", "Río de Janeiro", "Montevideo", "Miami", "Vancouver"])

ruta_archivo = "./clientes.csv"

CSV.write(ruta_archivo, df, header=true)

println("Los datos han sido exportados a $ruta_archivo")