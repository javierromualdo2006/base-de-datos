1)
SELECT d.department_name, count(e.first_name) AS empleados, j.max_salary FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN jobs j ON e.job_id = j.job_id
GROUP BY d.department_name
2)

SELECT e.first_name, e.last_name, d.department_name, c.country_name FROM employees e
JOIN employees m ON e.employee_id = m.manager_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_name IS "United States of America"

3)
SELECT e.employee_id, e.first_name, e.last_name, e.email, e.phone_number, d.department_id FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.phone_number ISNULL

UPDATE employees
SET phone_number = "111.222.3344"
WHERE phone_number IS (SELECT phone_number FROM employees WHERE phone_number ISNULL)

4)

5)
INSERT INTO departments(department_name, location_id)
VALUES ("development", (SELECT location_id FROM locations WHERE street_address = "147 Spadina Ave"));

INSERT INTO employees(first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id)
  VALUES ("Matias" ,"Gonzales", "mgonzales@gmail.com", "1.231.231.122", "'2024-06-25'", "9", "5000", "100", "12"),
         ("Laura" ,"Nieves", "lnieves@gmail.com", "1.231.231.122", "'2024-06-25'", "9", "5000" ,"100", "12"),
		 ("Federico" ,"Lopez", "mgonzales@gmail.com", "1.231.231.122", "'2024-06-25'", "9", "5000", "100", "12");
6)

7)