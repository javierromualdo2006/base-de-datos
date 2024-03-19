SELECT * FROM inhabitant

SELECT * FROM inhabitant WHERE state = 'friendly'

SELECT * FROM inhabitant WHERE state = 'friendly' AND job = 'weaponsmith' 

SELECT * FROM inhabitant WHERE state = 'friendly' AND job LIKE '%smith' 

SELECT personid FROM Inhabitant WHERE name = 'Stranger' 

SELECT gold FROM Inhabitant WHERE name = 'Stranger' 

SELECT * FROM item WHERE owner IS NULL

UPDATE item SET owner = 20 WHERE owner IS NULL

SELECT * FROM item WHERE owner = 20

SELECT * FROM inhabitant WHERE state = 'friendly' AND job = 'dealer' OR job = 'merchant'

UPDATE item SET owner = 15 WHERE item = 'teapot' OR item = 'ring'