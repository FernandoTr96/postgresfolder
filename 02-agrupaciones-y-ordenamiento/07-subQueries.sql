# Una consulta dentro de otra
# Debe ir entre parentesis con un alias y puede ponerse donde sea que haya una columna 

SELECT  
    * 
FROM(
    SELECT 
    SUBSTRING(email,POSITION('@' in email)+1) as domain,
    count(*) as total
    FROM users
    GROUP BY SUBSTRING(email,POSITION('@' in email)+1)
    HAVING count(*) > 1
) as domains;