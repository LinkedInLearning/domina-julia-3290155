using DataFrames
using CSV
using Plots
using GLM

ruta_archivo = "/Users/linkedin/Documents/03_07/examenes.csv"
df = CSV.read(ruta_archivo, DataFrame)