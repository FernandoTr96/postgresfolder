# Cuando se hace un join es como si el resultado fuese una tabla integra e independiente por lo que se le pueden aplicar
# funciones personalizadas o de agregacion (SUM,AVG,COUNT,etc...)

# contar paises de cada continente
(SELECT count(*) as Countries,b.name as Continent FROM 
country a INNER JOIN continent b ON a.continent = b.code GROUP BY b.name)
UNION
(SELECT 0 as Countries,b.name as Continent FROM 
country a RIGHT JOIN continent b ON a.continent = b.code 
where a.continent IS NULL GROUP BY b.name)
ORDER BY countries ASC;

# contar paises de cada continente pero agrupando los que tengan ameria en su nombre
(
    SELECT count(*) as countries,b.name as continent FROM country a INNER JOIN continent b 
    ON a.continent = b.code WHERE b.name NOT LIKE '%America%' GROUP BY b.name
)
UNION
(
    SELECT count(*) as countries, 'America' as continent FROM country a INNER JOIN continent b 
    ON a.continent = b.code WHERE b.name LIKE '%America%' 
)
ORDER BY countries ASC;

#  Pais con mas ciudades
SELECT b.name as country, count(*) as cities FROM city a INNER JOIN country b ON a.countrycode = b.code GROUP BY country
ORDER BY cities DESC LIMIT 1;