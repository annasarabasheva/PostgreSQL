SELECT 
	em.employee_id, 
	concat(em.first_name, ' ', em.last_name) AS full_name, 
	d.department_id, 
	d.name
FROM employees AS em
JOIN departments AS D
ON d.manager_id = em.employee_id
ORDER BY em.employee_id
LIMIT 5;