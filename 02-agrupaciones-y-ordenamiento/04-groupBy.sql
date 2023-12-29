# Agrupacion de datos por columnas

# Tengamos el ejemplo de buscar followers con x numero
SELECT first_name,last_name,followers
FROM users WHERE followers = 4 or followers = 4999;

# Si quiero saber cuantas personas tienen 4 followers y 4999
SELECT count(*) AS personas, followers
FROM users WHERE followers = 4 or followers = 4999
GROUP BY followers;

SELECT count(*) AS personas, followers
FROM users WHERE followers BETWEEN 4 AND 4999
GROUP BY followers ORDER BY followers DESC;

# group by con otras funciones
# cuantos correos hay en cada dominio
# el groupby agrupa no solo por columna si no por el valor que le pases por eso le pasamos el substring
SELECT 
SUBSTRING(email,POSITION('@' in email)+1) as domain,
count(*) as total
FROM users
GROUP BY SUBSTRING(email,POSITION('@' in email)+1)
HAVING count(*) > 1;