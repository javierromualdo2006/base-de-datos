1) SELECT FirstName, LastName FROM employees ORDER BY LastName ASC

2) SELECT e.FirstName, e.LastName, e.ReportsTo FROM employees r JOIN employees e ON r.EmployeeId = e.EmployeeId WHERE e.ReportsTo IS NULL

3) SELECT i.total, i.BillingAddress FROM invoices i 
   ORDER BY i.total DESC LIMIT 5

4) SELECT t.name, t.Milliseconds FROM albums a JOIN tracks t ON a.AlbumId = t.AlbumId WHERE a.Title LIKE 'Big Ones' 
   ORDER BY t.Milliseconds DESC

5) 

6) 

7) 

8) 

9) 

10) 