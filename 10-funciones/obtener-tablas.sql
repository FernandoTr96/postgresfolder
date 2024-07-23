create or replace FUNCTION country_region()
    RETURNS TABLE(id CHARACTER(2), name VARCHAR(40), region VARCHAR(40))
as $$
BEGIN
    RETURN query
        select country_id, country_name, region_name from countries
        inner join regions on countries.region_id = regions.region_id;
END;
$$ LANGUAGE plpgsql;

select * from country_region();