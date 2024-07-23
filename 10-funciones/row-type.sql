create or replace function max_raise(employeeId INTEGER)
returns NUMERIC(8,2)
as $$

    DECLARE
    poss_raise NUMERIC(8,2);
    max_salary NUMERIC(8,2);
    employee employees%rowtype;

    BEGIN
        -- Obtener todos los datos del empleado en una sola consulta
        select * into employee from employees where employee_id = employeeId;

        -- Obtener el salario máximo para el trabajo del empleado
        select max_salary into max_salary from jobs where job_id = employee.job_id;

        poss_raise = max_salary - employee.salary;

        IF(poss_raise < 0) THEN
            -- Lanza una excepción si el posible aumento es negativo
            RAISE EXCEPTION 'Error una persona supera el aumento %', employee.first_name;
        END IF;

        RETURN poss_raise;
    END;
$$
LANGUAGE plpgsql;
