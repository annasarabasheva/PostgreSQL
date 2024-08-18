SELECT
	department_id,
	max(salary) as "max_salaries"
FROM employees
GROUP BY department_id
ORDER BY department_id