# crear llave primaria alterando la tabla
ALTER TABLE country add PRIMARY KEY(code);

# para la llave primaria no debe ser un campo que se repita
DELETE FROM country WHERE code2 = 'NA';