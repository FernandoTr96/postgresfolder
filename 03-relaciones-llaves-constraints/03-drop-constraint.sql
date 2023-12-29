# Eliminar un CONSTRAINT
# El nombre del CONSTRAINT por lo general es tabla_columna_tipoConstraint
# El nombre del constraint debe ir en comillas dobles siempre
ALTER TABLE country DROP CONSTRAINT "country_continent_check";