SELECT 
	em.employee_id, 
	concat(em.first_name, ' ', em.last_name) AS full_name, 
	p.project_id, 
	p.name
FROM employees AS em
JOIN employees_projects ON employees_projects.employee_id = em.employee_id
JOIN projects AS p ON p.project_id = employees_projects.project_id
WHERE p.project_id = 1;