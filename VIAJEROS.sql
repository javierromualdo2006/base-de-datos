1)SELECT count(DISTINCT NOMBRE_ESTACION) as TOTAL_ESTACIONES
  FROM barcelona_viajeros_por_franja_xlsx

2)SELECT DISTINCT NOMBRE_ESTACION as TOTAL_ESTACIONES
  FROM barcelona_viajeros_por_franja_xlsx

3)SELECT DISTINCT NOMBRE_ESTACION as TOTAL_ESTACIONES, count(VIAJEROS_BAJADOS) AS TOTAL_BAJADOS, count(VIAJEROS_SUBIDOS) AS TOTAL_SUBIDOS
  FROM barcelona_viajeros_por_franja_xlsx
  GROUP BY NOMBRE_ESTACION

4)SELECT DISTINCT NOMBRE_ESTACION as TOTAL_ESTACIONES, count(VIAJEROS_BAJADOS) AS TOTAL_BAJADOS, count(VIAJEROS_SUBIDOS) AS TOTAL_SUBIDOS, (VIAJEROS_BAJADOS - VIAJEROS_SUBIDOS) AS DIFERENCIA
  FROM barcelona_viajeros_por_franja_xlsx
  GROUP BY NOMBRE_ESTACION

5)SELECT NOMBRE_ESTACION, count(VIAJEROS_SUBIDOS) AS TOTAL_SUBIDOS, TRAMO_HORARIO 
  FROM barcelona_viajeros_por_franja_xlsx
  GROUP BY NOMBRE_ESTACION
  ORDER BY TOTAL_SUBIDOS DESC
  LIMIT 1

6)SELECT NOMBRE_ESTACION, MAX(VIAJEROS_SUBIDOS) AS TOTAL_SUBIDOS
  FROM barcelona_viajeros_por_franja_xlsx
  GROUP BY NOMBRE_ESTACION
  ORDER BY TOTAL_SUBIDOS DESC
  LIMIT 1

7)SELECT NOMBRE_ESTACION, count(VIAJEROS_BAJADOS) AS TOTAL_BAJADOS, TRAMO_HORARIO 
  FROM barcelona_viajeros_por_franja_xlsx
  GROUP BY NOMBRE_ESTACION
  ORDER BY TOTAL_BAJADOS DESC
  LIMIT 1

8)SELECT NOMBRE_ESTACION, MAX(VIAJEROS_BAJADOS) AS TOTAL_BAJADOS
  FROM barcelona_viajeros_por_franja_xlsx
  GROUP BY NOMBRE_ESTACION
  ORDER BY TOTAL_BAJADOS DESC
  LIMIT 1

9)SELECT NOMBRE_ESTACION, (VIAJEROS_BAJADOS - VIAJEROS_SUBIDOS) AS DIFERENCIA, TRAMO_HORARIO
  FROM barcelona_viajeros_por_franja_xlsx
  GROUP BY NOMBRE_ESTACION
  ORDER BY DIFERENCIA DESC
  LIMIT 1

10)SELECT NOMBRE_ESTACION, max(VIAJEROS_BAJADOS - VIAJEROS_SUBIDOS) AS DIFERENCIA
   FROM barcelona_viajeros_por_franja_xlsx
   GROUP BY NOMBRE_ESTACION
   ORDER BY DIFERENCIA DESC
   LIMIT 1

11)SELECT TRAMO_HORARIO, avg(VIAJEROS_SUBIDOS) AS PROMEDIO
   FROM barcelona_viajeros_por_franja_xlsx
   GROUP BY TRAMO_HORARIO

12)