# SELECCION CONDICIONAL MEDIANTE CLAUSULA WHERE
# COINCIDIR PALABRAS CON DIRECTIVA LIKE

# Seleccionar cuando el registro coincida con un string
SELECT * FROM users WHERE name = 'Alex';

# Seleccionar registros que empiezan con a
SELECT * FROM users WHERE name LIKE 'a%';

# Seleccionar registros que terminan con a
SELECT * FROM users WHERE name LIKE '%a';

# Seleccionar registros que contienen  a
SELECT * FROM users WHERE name LIKE '%a%';

# Tambien tenemos el comodin "_" que permite aceptar cualquier letra y seguido de otras mas
# Esta opcion obliga a hacer match con una palabra de n caracteres obligatoriamente
# En el ejemplo estamos buscando una palabra que empieze con lo que sea y termine con "om"
SELECT * FROM users WHERE name LIKE '%_om%';