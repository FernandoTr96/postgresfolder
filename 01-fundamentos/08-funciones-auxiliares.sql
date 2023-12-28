# Funciones que te permiten manipular las columnas y obtener ciertos valores especificos
# Al usar funciones se pierde el nombre de la columna y hay que ponerle un alias con la directiva AS
# Se puede concatenar usando ||

SELECT 
id,
name,
SUBSTRING(name,0,POSITION(' ' in name)) AS firstName,
SUBSTRING(name,POSITION(' ' in name) + 1) AS lastName,
UPPER(name) AS nameUpper,
LOWER(name) AS nameLower,
LENGTH(name) AS nameLength,
CONCAT(id,'-',name) AS nameConcat,
id||'-'||name AS nameConcat2,
(10*10) AS constant,
SUBSTRING(name,0,5) AS nameSubstring,
POSITION(' ' in name) AS nameBlankSpacePosition
FROM users;