1) SELECT * FROM crime_scene_report WHERE date IS 20180115 AND city IS "SQL City"

2) SELECT name, address_number FROM person WHERE address_street_name IS "Northwestern Dr" ORDER BY address_number DESC

Morty Schapiro / Northwestern Dr / ADRESS: 4919
Annabel Miller / Franklin Ave / ADRESS: 103 / person id: 16371 / membership id 90081 

3) SELECT name, address_street_name, address_number FROM person WHERE name LIKE "annabel%" AND address_street_name IS "Franklin Ave"

4) SELECT p.name, i.transcript FROM person p JOIN interview i ON p.id = i.person_id WHERE p.name LIKE "annabel miller"

5) SELECT gym.name, p.id, gym.id FROM get_fit_now_member gym JOIN person p ON p.id = gym.person_id WHERE p.id IS 16371

6) SELECT cm.name, cm.id, ci.check_in_date FROM get_fit_now_check_in ci JOIN get_fit_now_member cm ON ci.membership_id = cm.id WHERE ci.check_out_time > 1699

7) SELECT p.name, d.plate_number FROM person p
JOIN drivers_license d ON p.license_id = d.id
WHERE p.name IS "Jeremy Bowers"

membership ID de los posibles asesinos

SELECT * FROM get_fit_now_check_in WHERE check_in_date IS 20180109 AND check_out_time > 1699

membership gold

48Z7A
48Z55

placa del auto
H42W

sospechosos
Joe Germuska
Jeremy Bowers

principal culpable
Jeremy Bowers