SELECT p.name, d.age, d.car_make, car_model, plate_number
FROM person p JOIN drivers_license d ON p.license_id = d.id
WHERE d.age > 70