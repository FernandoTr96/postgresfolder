# On delete on update
# Eliminacion y actualizacion en cascada
# si borro o actualizo un pais debe afectar a la relacion de city o countrylanguage

# LAS LLAVES HACEN REFERENCIA A COUNTRY
# UN COUNTRY TIENE MUCHOS LENGUAJES 
# UN COUNTRY TIENE MUCHAS CIUDADES 
# POR LO QUE CUALQUIER ELIMINACION O ACTUALIZACION A LA TABLA PRINCIPAL AFECTARA A LAS RELACIONES

# city fk
ALTER TABLE city ADD CONSTRAINT fk_country_code
FOREIGN key(countrycode)
REFERENCES country(code)
ON DELETE CASCADE
ON UPDATE CASCADE;


# country language fk
ALTER TABLE countrylanguage ADD CONSTRAINT fk_countrycode
FOREIGN KEY (countrycode) 
REFERENCES country(code)
ON DELETE CASCADE
ON UPDATE CASCADE;
