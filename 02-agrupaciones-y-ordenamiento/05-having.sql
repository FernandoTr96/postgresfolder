# Having permite crear condiciones derivadas de las funciones de agregacion SUM, COUNT, MIN, MAX, ETC

SELECT 
    count(*),
    country 
FROM 
    users
GROUP BY country
HAVING count(*) > 6
ORDER BY count(*) DESC;