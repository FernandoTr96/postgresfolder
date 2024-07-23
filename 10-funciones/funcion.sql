-- Active: 1721616182445@@127.0.0.1@5432@cursosql
CREATE OR REPLACE FUNCTION greet_employee(employee_name VARCHAR)
RETURNS VARCHAR
as $$
BEGIN
    RETURN concat('Hola ', employee_name);
END;
$$
LANGUAGE PLPGSQL;

select greet_employee(first_name) from employees;

