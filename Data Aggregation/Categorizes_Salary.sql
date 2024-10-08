SELECT 
	job_title,
	CASE
	WHEN avg(salary) > 45800 THEN 'Good'
	WHEN avg(salary) BETWEEN 27500 AND 45800 THEN 'Medium'
	WHEN avg(salary) < 27500 THEN 'Need Improvement'
	END AS category
FROM employees
GROUP BY job_title
ORDER BY category, job_title