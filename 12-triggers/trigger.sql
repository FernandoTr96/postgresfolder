create or replace TRIGGER create_session_trigger AFTER UPDATE ON "user"
FOR EACH ROW EXECUTE PROCEDURE create_session_log();

create or REPLACE FUNCTION create_session_log()
RETURNS TRIGGER as $$
    -- ejecutara lo que este aqui por cada actualizacion de users
$$ LANGUAGE PLPGSQL;