SELECT p.name, d.id as licencia
FROM person p LEFT JOIN drivers_license d ON p.license_id = d.id 
WHERE d.id IS NULL