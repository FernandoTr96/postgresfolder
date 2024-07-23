create or replace function max_raise(employeeId INTEGER)
returns NUMERIC(8,2)
as $$

    DECLARE
    poss_raise NUMERIC(8,2);
    job_id INTEGER;
    salary NUMERIC(8,2);
    max_salary NUMERIC(8,2);

    BEGIN
        
        select job_id,salary into job_id,salary from employees where employee_id = employeeId;
        select max_salary into max_salary from jobs where job_id = job_id;
        poss_raise = max_salary - salary;

        IF(poss_raise < 0) THEN
            poss_raise = 0;
            -- RAISE EXCEPTION 'Error una persona supera el aumento %', employeeId
        END IF;

        RETURN poss_raise;
    END;
$$
LANGUAGE plpgsql; 
