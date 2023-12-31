# Al reestructurar informacion querremos modificar campos para que sean llaves foraneas
# Por ello hay que cambiar su tipo y asignar como llave foranea

# Cambiar tipo de una columna 
ALTER TABLE country 
ALTER COLUMN continent TYPE BIGINT
USING continent::integer;

# Asignar llave foranea
ALTER TABLE country ADD CONSTRAINT fk_continent
FOREIGN KEY(continent)
REFERENCES continent(code);

