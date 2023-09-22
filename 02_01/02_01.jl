using CSV
using DataFrames

ruta = "/Users/linkedin/Documents/02_01/empleados.csv"
df = CSV.read(ruta, DataFrame)

print(df)