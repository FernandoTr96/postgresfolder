# creacion de indices
# el nombre del indice debe ser en comillas dobles
# los indices deberian aplicarse a campos que no se repitan y pueden ser compuestos pero se pueden usar en cualquier campo

# se uso unique porque este campo no se repite
create UNIQUE index "unique_country_name" on country(
    name
);

# aqui no se usa porque es un campo que puede repetirse
create index "unique_country_continent" on country(
    continent
);

# los indices mejoran la velocidad al buscar por ese campo
# pero hay que considerar que son bloqueantes depende la cantidad de registros
# al momento de crearlos se tarda y bloquea la tabla