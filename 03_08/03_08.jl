using MySQL
using DBInterface

db_host = "127.0.0.1"
db_user = "root"
db_pass = ""
db_name = "libreria"
db_port = 3306

conexion = DBInterface.connect(MySQL.Connection,db_host,db_user, db_pass, db = db_name,  port = db_port)

consulta = "SELECT * FROM libro"

preparar_consulta= DBInterface.prepare(conexion, consulta)

resultados = DBInterface.execute(preparar_consulta)

for fila in resultados
    println("Título: $(fila.titulo). Puntuación: $(fila.puntuacion)")
end

DBInterface.close!(conexion::MySQL.Connection)
