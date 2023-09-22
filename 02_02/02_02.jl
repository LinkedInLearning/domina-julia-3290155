using XLSX

ruta_archivo = "/Users/linkedin/Documents/02_02/temperaturas.xlsx"
archivo_xlsx = XLSX.readxlsx(ruta_archivo)

hoja = archivo_xlsx["temperaturas"]

for columna in XLSX.eachrow(hoja)
    annio = columna[1]
    temperatura = columna[2]
    println("Año=$annio, Temperatura=$temperatura")
end