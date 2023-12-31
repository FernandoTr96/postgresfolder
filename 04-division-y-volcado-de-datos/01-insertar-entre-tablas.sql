# insertar registros de una tabla a otra
# en este caso crearemos una tabla de continentes y los obtendremos de la tabla de users

# borrar tabla
DROP TABLE continents;
# tabla continentes
CREATE TABLE IF NOT EXISTS continent(
    code SERIAL UNIQUE,
    name TEXT NOT NULL
);

# seleccionamos los datos que pasaremos a otra tabla
SELECT DISTINCT continent FROM country ORDER BY continent ASC;

# insertamos en otra tabla los resultados
# empezamos como si hicieramos un insert normal indicamos que campos vamos a llenar y seguido hacemos el select
# como solo selecciono una columna esa columna se inserta en la columna name de la otra tabla tienen que hacer match con sus posiciones
INSERT INTO continent(name)
SELECT DISTINCT continent FROM country ORDER BY continent ASC;

# vemos que los datos se hayan insertado en las columnas correspondientes
SELECT * FROM continent;