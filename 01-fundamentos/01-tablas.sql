# CREACION DE TABLAS
# constrains: aquellas palabras reservadas que aplican validaciones a la tabla o columnas

CREATE TABLE users(
    id SERIAL,
    name VARCHAR(150) UNIQUE,
    firstname VARCHAR(150) NULL,
    lastname VARCHAR(150) NULL
);

