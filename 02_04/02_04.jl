using DataFrames
using XLSX

df = DataFrame(
    nombre=["Luis", "Ana", "Sebastián", "Sofía", "Mateo", "Camila", "Valentín", "Isabella", "Lucía", "Diego", "Valeria"],
    edad=[15, 30, 32, 41, 47, 23, 20, 18, 17, 25, 14],
    ciudad=["Buenos Aires", "Lima", "Ciudad de México", "Santiago", "Alajuela", "Nueva York", "Toronto", "Río de Janeiro", "Montevideo", "Miami", "Vancouver"])

ruta_archivo = "./clientes.xlsx"

XLSX.writetable(ruta_archivo, collect(DataFrames.eachcol(df)), names(df))

println("Datos escritos en $ruta_archivo exitosamente.")
