# actualizar campos de una tabla con los datos de otra

# para poder actualizar una tabla masivamente hay que remover los CONSTRAINT que tenga la tabla destino
ALTER TABLE country DROP CONSTRAINT "country_continent_check"

# actualizar
UPDATE country a SET continent = (SELECT code FROM continent b WHERE b.name = a.continent)