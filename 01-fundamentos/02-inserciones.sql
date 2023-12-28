# INSERCIONES
# Las comillas dobles "" suelen buscar un objeto existente en este caso una columna, para indicar datos de cadena se usa ''
# Al insertar registros multiples hay que considerar las coma por cada nuevo conjunto de datos

# insercion unica con comillas dobles suele dar error
INSERT INTO users(name) values("Fernando");

# insercion unica
INSERT INTO users(name) values('Fernando');

# insercion multiple separada por comas
INSERT INTO users(name) values
('Fernando Tinoco'),
('Andrea Perez'),
('Pedro Flores'),
('Octavio Paz');