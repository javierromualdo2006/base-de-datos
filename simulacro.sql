1) SELECT * FROM film ORDER BY title ASC

2) SELECT DISTINCT rating FROM film ORDER BY title ASC

3) SELECT title, rental_rate, rating FROM film 
   WHERE rating IS "PG-13" OR rating IS "PG" 
   ORDER BY rental_rate DESC, title ASC

4) SELECT ci.city, co.country FROM country co 
   JOIN city ci ON co.country_id = ci.country_id 
   ORDER BY co.country = co.country

5) SELECT co.country, count(ci.city) AS cant_ciudades FROM country co 
   JOIN city ci ON co.country_id = ci.country_id 
   GROUP BY co.country_id 
   ORDER BY cant_ciudades

6) SELECT co.country, count(ci.city) AS cant_ciudades FROM country co 
   JOIN city ci ON co.country_id = ci.country_id 
   GROUP BY co.country_id 
   HAVING cant_ciudades > 2 

7) SELECT max(return_date) AS fecha_mas_actual , min(return_date) AS fecha_más_vieja FROM rental 
   WHERE return_date NOTNULL  

8) SELECT f.title, count(a.film_id) AS cant_actores FROM film_actor a 
   JOIN film f ON a.film_id = f.film_id
   GROUP BY a.film_id
   ORDER BY cant_actores ASC LIMIT 10

9) SELECT title, rental_duration FROM film 
   ORDER BY rental_duration DESC LIMIT 1
   OFFSET 2