create or replace PROCEDURE insert_region_proc(int, varchar)
as $$
BEGIN
    insert into regions(region_id, region_name)
    values($1, $2);
    -- raise notice 'value: %',$1;
    -- ROLLBACK;
    COMMIT;
END;
$$ LANGUAGE PLPGSQL;

CALL insert_region_proc(5,'Central America');

select * from regions;