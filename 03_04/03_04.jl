using DataFrames

df_estudiantes = DataFrame(
    identicador=[1, 2, 3, 4, 5, 6], 
    nombre=["Luis", "Ana", "Sebastián", "Sofía", "Mateo", "Camila"]
)

df_ciudad = DataFrame(
    identicador=[2,3,4,5,7,8], 
    ciudad=["Buenos Aires", "Lima", "Ciudad de México", "Santiago", "Alajuela", "Nueva York"]
)

left_join_df = leftjoin(df_estudiantes, df_ciudad, on=:identicador)
println(left_join_df)

right_join_df = rightjoin(df_estudiantes, df_ciudad, on=:identicador)
println(right_join_df)
