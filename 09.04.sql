1) -- Eliminar empleados que trabajan en locaciones en Canadá
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

2) -- 2. Listado de nombre, apellido, departamento y país de todos los empleados que trabajan en United Kingdom
SELECT e.first_name, e.last_name, d.department_name, c.country_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_name = 'United Kingdom';

3) -- 3. Eliminar todos los trabajos que no posean empleados asociados
DELETE FROM jobs
WHERE job_id NOT IN (
    SELECT DISTINCT job_id
    FROM employees
);

4) -- 4. Calcular la cantidad de personas, el sueldo promedio, mínimo y máximo de todos los puestos laborales (job_title), descartando aquellos que tengan un sólo empleado
SELECT j.job_title, COUNT(e.employee_id) AS employee_count,
       AVG(e.salary) AS avg_salary, MIN(e.salary) AS min_salary, MAX(e.salary) AS max_salary
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
GROUP BY j.job_title
HAVING COUNT(e.employee_id) > 1;
