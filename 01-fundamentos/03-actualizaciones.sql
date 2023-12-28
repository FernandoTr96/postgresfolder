# ACTUALIZACIONES
UPDATE users SET name = 'Alex' WHERE name = 'Octavio'; 

UPDATE users SET 
firstname = SUBSTRING(name,0,POSITION(' ' in name)),
lastname = SUBSTRING(name,POSITION(' ' in name) + 1);