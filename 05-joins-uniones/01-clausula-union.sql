# Clausula para unir dos consultas independientes
# Para usar union hay que considerar que ambas consultas deben tener el mismo numero de columnas
# Tambien las columnas deben ser del mismo tipo
# Si las columnas tienen el mismo nombre entonces entonces listara una columna con los datos de ambas consultas y con valores sin repetir
# Union solo lista filas unicas si queremos obtener aun que se repita seria con UNION ALL

SELECT name FROM continent WHERE name LIKE '%America%'
UNION
SELECT 'Dato columna' FROM country
ORDER BY name ASC;

SELECT name FROM (SELECT name FROM continent
UNION
SELECT name FROM country
ORDER BY name ASC) as continentesYpaises WHERE name = 'Asia';



# al combinar mas de 2 columnas cada columna debe hacer match con su columna siguiente
# por ejemplo aqui el code de contient ya tiene valores fijos dados por la base de datos por lo que los contienentes deben tener ese codigo
# aquellos que no son continentes deberan tener la columna que se le asigno que es 666
# basicamente cada columna se combina en una sola con su contraria
SELECT code,name FROM (SELECT code,name FROM continent
UNION
SELECT 666,name FROM country
ORDER BY name ASC) as continentesYpaises WHERE name = 'Asia';