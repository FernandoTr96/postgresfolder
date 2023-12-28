# SELECCION DE DATOS

# retornar todos los datos de una tabla
SELECT * FROM users;

# seleccionar columnas especificas
SELECT name FROM users;

# limitar la cantidad de registros con LIMIT y OFFSET
# limit: obtiene los primeros n registros
# offset: salta los orimeros n registros dados y trae los siguientes n
SELECT * FROM users LIMIT 2 OFFSET 2;