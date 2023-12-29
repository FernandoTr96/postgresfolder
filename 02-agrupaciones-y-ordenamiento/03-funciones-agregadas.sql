# Funciones para generar estadisticas o calculos

# Contar filas
SELECT count(*) AS total FROM users;

# Encontrar el registro minimo
SELECT MIN(followers) AS minimoFollowers FROM users;

# Encontrar el registro maximo
SELECT MAX(followers) AS maximoFollowers FROM users;

# Promedio
SELECT AVG(followers) AS promedioFollowers FROM users;

# Redondear
SELECT ROUND(AVG(followers)) AS promedioFollowers FROM users;

