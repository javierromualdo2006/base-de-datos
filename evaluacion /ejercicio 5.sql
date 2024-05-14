SELECT max(d.age) as 'edad maxima', min(d.age) as 'edad minima', avg(d.age) as 'edad promedio'
FROM person p 
LEFT JOIN drivers_license d 
ON p.license_id = d.id 
WHERE d.gender IS 'female'
