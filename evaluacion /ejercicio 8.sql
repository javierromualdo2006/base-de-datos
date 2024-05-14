SELECT p.name, d.car_make, car_model, annual_income, count(car_model) as popularidad
FROM person p 
JOIN drivers_license d ON p.license_id = d.id
JOIN income i ON p.ssn = i.ssn
WHERE annual_income < 35000 
GROUP by car_model
HAVING popularidad > 4
ORDER by popularidad DESC