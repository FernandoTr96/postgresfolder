# llaves foraneas 
ALTER TABLE city ADD CONSTRAINT fk_country_code
FOREIGN key(countrycode)
REFERENCES country(code);

# si da un error de insert or update on table "city" violates foreign key constraint "fk_country_code"
# es porque para relacionar la llave foranea hay ids que no tienen un registro por ejemplo en la tabla de ciudades no existe AFG
# por lo que o borramos los registros que tengan ese id o se agrega ese registro con ese ID
INSERT INTO country
		values('AFG', 'Afghanistan', 'Asia', 'Southern Asia', 652860, 1919, 40000000, 62, 69000000, NULL, 'Afghanistan', 'Totalitarian', NULL, NULL, 'AF');


# country language fk
ALTER TABLE countrylanguage ADD CONSTRAINT fk_countrycode
FOREIGN KEY (countrycode) 
REFERENCES country(code);

INSERT INTO country
VALUES('NAM', 'Namibia', 'Africa', 'Southern Africa', 825418, 1990, 2540905, 49, 2587809, NULL, 'Namibia', 'no se', NULL, NULL, 'NA');

# agregar llave foranea en una tabla
# id_cliente INT REFERENCES clientes(id_cliente) ON DELETE CASCADE