SELECT name, address_street_name, address_number
FROM person WHERE address_street_name IS 'Franklin Ave' 
ORDER BY address_number ASC LIMIT 1 OFFSET 43