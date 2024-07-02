

1)SELECT j.job_title, COUNT(e.employee_id) AS employee_count, SUM(e.salary) AS total_salary
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY employee_count DESC;


2)SELECT e.first_name, e.last_name, j.job_title, d.department_name, l.city
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;


3)UPDATE employees
SET salary = salary * 1.55
WHERE salary < 7500 AND department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name IN ('IT', 'Finance')
);


4)-- Eliminar empleados que trabajan en locaciones en Canadá
DELETE FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location_id IN (
        SELECT location_id
        FROM locations
        WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada')
    )
);

-- Eliminar departamentos que están en locaciones en Canadá
DELETE FROM departments
WHERE location_id IN (
    SELECT location_id
    FROM locations
    WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada')
);

-- Eliminar locaciones en Canadá
DELETE FROM locations
WHERE country_id = (SELECT country_id FROM countries WHERE country_name = 'Canada');

-- Eliminar el país Canadá
DELETE FROM countries
WHERE country_name = 'Canada';


5)UPDATE employees
SET phone_number = '333.444.555'
WHERE job_id = (SELECT job_id FROM jobs WHERE job_title = 'Sales Manager')
AND phone_number IS NULL;


6) -- Insertar nueva locación si no existe
INSERT OR IGNORE INTO locations (location_id, street_address, postal_code, city, state_province, country_id)
VALUES ((SELECT IFNULL(MAX(location_id), 0) + 1 FROM locations), '2004 Charade Rd', '98109', 'Seattle', 'WA', 
(SELECT country_id FROM countries WHERE country_name = 'United States'));

-- Insertar nuevo departamento
INSERT INTO departments (department_id, department_name, location_id)
VALUES ((SELECT IFNULL(MAX(department_id), 0) + 1 FROM departments), 'Consultants',
(SELECT location_id FROM locations WHERE street_address = '2004 Charade Rd' AND city = 'Seattle'));

-- Insertar nuevo tipo de trabajo
INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES ((SELECT IFNULL(MAX(job_id), 0) + 1 FROM jobs), 'Consultant', 4000, 12000);

-- Insertar primer consultor
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, salary, manager_id, job_id, department_id)
VALUES (
    (SELECT IFNULL(MAX(employee_id), 0) + 1 FROM employees), 
    'Raul', 
    'Lopez', 
    'rlopez@gmail.com', 
    '334.445.556', 
    '2024-07-01', 
    5000, 
    105, 
    (SELECT job_id FROM jobs WHERE job_title = 'Consultant'), 
    (SELECT department_id FROM departments WHERE department_name = 'Consultants')
);

-- Insertar segundo consultor
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, salary, manager_id, job_id, department_id)
VALUES (
    (SELECT IFNULL(MAX(employee_id), 0) + 1 FROM employees), 
    'Andres', 
    'Gonzalez', 
    'agonzalez@gmail.com', 
    '334.445.556', 
    '2024-07-01', 
    6000, 
    106, 
    (SELECT job_id FROM jobs WHERE job_title = 'Consultant'), 
    (SELECT department_id FROM departments WHERE department_name = 'Consultants')
);

-- Insertar tercer consultor
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, salary, manager_id, job_id, department_id)
VALUES (
    (SELECT IFNULL(MAX(employee_id), 0) + 1 FROM employees), 
    'Laura', 
    'Fernandez', 
    'lfernandez@gmail.com', 
    '334.445.556', 
    '2024-07-01', 
    7500, 
    107, 
    (SELECT job_id FROM jobs WHERE job_title = 'Consultant'), 
    (SELECT department_id FROM departments WHERE department_name = 'Consultants')
);

