CREATE OR REPLACE PROCEDURE sp_increase_salary_by_id(employee_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Start a transaction block
    BEGIN
        -- Attempt to update the salary
        UPDATE employees
        SET salary = salary * 1.05
        WHERE id = employee_id;

        -- Check if any rows were updated
        IF NOT FOUND THEN
            -- If no rows were updated, raise an exception
            RAISE EXCEPTION 'Employee with ID % does not exist', employee_id;
        END IF;
    EXCEPTION
        -- If an exception occurs, rollback the transaction
        WHEN others THEN
            -- Print the error message
            RAISE NOTICE 'Transaction failed: %', SQLERRM;
            -- Raise the same exception to ensure no changes are committed
            RAISE;
    END;
END;
$$;
