# Filtrar entre un rango de valores
SELECT first_name,last_name,followers 
FROM users WHERE followers >= 4600 AND followers <= 4700;

# En lugar de usar operadores artimeticos usamos between
SELECT first_name,last_name,followers 
FROM users WHERE followers BETWEEN 4600 AND 4700;
