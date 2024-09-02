CREATE OR REPLACE PROCEDURE sp_increase_salaries(department_name VARCHAR(50))
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE employees
    SET salary = salary * 1.05
    WHERE department = department_name;
END;
$$;