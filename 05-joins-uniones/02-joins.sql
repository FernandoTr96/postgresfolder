# INNER JOIN: Muestra los datos unicamente cuando la Tabla A hace match con la Tabla B osea existen datos relacionados entre ambas tablas
# ejemplo: Cada pais tiene un continente por lo que los registros siempre se mostraran completos con su relacion
SELECT a.name as country, b.name as continent FROM country a INNER JOIN continent b on a.continent = b.code ORDER BY a.name;

# LEFT OUTER JOINT: Muestra siempre los datos de A y considera los de la tabla B aun cuando en la tabla B no hay relacion mostrandolos como NULL
# ejemplo: Resulta que la atlantida existe pero no esta en ningun continente esta en el mar, entonces se agrego como nuevo pais (Tabla A) pero como no hay 
# continente (Tabla B) aparecera la atlantida como pais pero no su continente (NULL)
SELECT a.name as country, b.name as continent FROM country a LEFT JOIN continent b on a.continent = b.code ORDER BY b.code DESC;

# RIGHT OUTER JOIN: Muestra siempre la tabla B y si no hay relacion en la tabla A igual muetsra el registro de B pero el registro de A sera NULL (contrario al caso anterior)
SELECT a.name as country, b.name as continent FROM country a RIGHT JOIN continent b on a.continent = b.code ORDER BY b.code DESC;

# FULL OUTER JOIN: Basicamente muestra todos los casos anteriores, si hay relacion muestra los registros, si hay En A pero no en B muestralo pero B sera null y si hay en B pero no en A muestralo pero A sera Null
SELECT a.name as Country,b.name as Continent FROM country a FULL OUTER JOIN continent b ON a.continent = b.code ORDER BY b.code DESC;

# LEFT AND RIGHT OUTER JOIN EXCLUTION: Los join con exclusion son basicamente los mismos casos anteriores pero la exclusion viene en el where se agrega un where para mostrar 
# o no los elementos NULL por ejemplo: where B.key IS NULL <-- dame todos los registros de A que no estuvieron en B
SELECT a.name as Country,b.name as Continent FROM country a RIGHT JOIN continent b ON a.continent = b.code WHERE a.name IS NUll;