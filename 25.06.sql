1)

SELECT e.first_name, d.department_name, l.city, j.max_salary, m.first_name FROM employees e
JOIN employees m ON e.employee_id = m.manager_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN jobs j ON e.job_id = j.job_id
ORDER BY j.max_salary

2)



3)

