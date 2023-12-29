# Verificar campos con el CONSTRAINT check
# Esto se valida al insertar es casi como un if

ALTER TABLE country add CHECK(
    surfacearea >= 0
)

# check con multiples posibilidades
ALTER TABLE country add CHECK(
    (continent = 'Asia'::text) or 
    (continent = 'South America'::text) or 
    (continent = 'North America'::text) or 
    (continent = 'Oceania'::text) or 
    (continent = 'Antarctica'::text) or 
    (continent ='Africa'::text) or 
    (continent = 'Europe'::text) 
)

# check con multiples posibilidades
ALTER TABLE country add CHECK(
    continent in ('Asia','South America','North America','Oceania','Antarctica','Africa','Europe')
)
