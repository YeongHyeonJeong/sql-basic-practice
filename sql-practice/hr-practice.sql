-- HR schema practice

-- average salary by job
SELECT job_id, AVG(salary)
FROM hr.employees
GROUP BY job_id
ORDER BY AVG(salary);

-- total salary by job
SELECT job_id, SUM(salary)
FROM hr.employees
GROUP BY job_id
ORDER BY SUM(salary) DESC;

-- employees with salary > 5000
SELECT employee_id, salary, hire_date
FROM hr.employees
WHERE salary > 5000
ORDER BY hire_date;