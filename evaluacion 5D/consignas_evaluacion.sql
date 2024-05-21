-- 1) Mostrar todos los tipos de crimenes
-- reportados en la ciudad 'SQL City'.
-- Los tipos de crimen deben estar en orden 
-- alfabético y no debe haber repetidos

SELECT DISTINCT type, city
FROM crime_scene_report 
WHERE city IS 'SQL City'
ORDER BY type ASC

-- 2) Listar el nombre de la persona y los 
-- datos del auto (marca, modelo y patente) de 
-- todos las mujeres de menos de 40 años, 
-- elegir el orden en que se muestran 

SELECT p.name, d.car_make, car_model, plate_number, d.gender, d.age
FROM person p JOIN drivers_license d ON p.license_id = d.id
WHERE d.age < 40 AND d.gender IS 'female'

-- 3) Buscar la lista de todas las personas
-- que NO están asociadas al gimnasio Get-Fit-Now

SELECT p.name, g.id as membrecia
FROM person p LEFT JOIN get_fit_now_member g ON g.person_id = p.id 
WHERE g.id IS NULL

-- 4) Encontrar el nombre y la dirección completa
-- de la persona que vive en la tercera casa
-- de la calle 'Franklin Ave' (ordenadas por la altura
-- de la calle)

SELECT name, address_street_name, address_number
FROM person WHERE address_street_name IS 'Franklin Ave' 
ORDER BY address_number ASC LIMIT 1 OFFSET 2

-- 5) Encontrar la edad mínima, máxima y promedio
-- de los varones que tienen licencia de conducir

SELECT max(d.age) as 'edad maxima', min(d.age) as 'edad minima', avg(d.age) as 'edad promedio', d.gender
FROM person p 
LEFT JOIN drivers_license d 
ON p.license_id = d.id 
WHERE d.gender IS 'male'

-- 6) Contar la cantidad de autos de cada
-- marca, ordenadas desde la que tiene más 
-- autos a la que tiene menos.  Descartar
-- las marcas que tienen menos de 100 autos

SELECT count(d.car_make) as cantidad_de_autos, d.car_make
FROM drivers_license d 
LEFT JOIN person p 
ON p.license_id = p.id 
GROUP BY d.car_make
HAVING cantidad_de_autos > 100

-- 7) Mostrar los nombres, numeros de seguridad social
-- (ssn), id de membresía y tipo de membresía de
-- las personas que fueron al gimnasio aunque sea una
-- vez durante el 2017.  Los resultados deben estar
-- ordenados de manera que los de un mismo tipo de
-- membresía (gold, silver, etc) aparezcan todos 
-- seguidos y dentro de cada una ordenados por ssn.   

SELECT g.name, p.ssn, g.id, g.membership_status, g.membership_start_date
FROM get_fit_now_member g LEFT JOIN person p 
ON g.person_id = p.id 
WHERE membership_start_date LIKE '2017%'
ORDER BY g.membership_status, p.ssn ASC

-- 8) Hacer un ranking de los 5 eventos más populares
-- a los que asistieron las personas que ganan 
-- más de 35000 dolares al año.  

SELECT p.name, f.event_name, annual_income, count(event_name) as popularidad
FROM facebook_event_checkin f 
JOIN person p ON f.person_id = p.id
JOIN income i ON p.ssn = i.ssn
WHERE annual_income > 35000 
GROUP by event_name
ORDER by popularidad DESC
LIMIT 5


