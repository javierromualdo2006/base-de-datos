1) SELECT name, Composer, Milliseconds FROM tracks

2) SELECT FirstName, LastName, Address, City FROM customers

3) SELECT name, Milliseconds FROM tracks WHERE Composer IS NULL AND Milliseconds > 2900000

4) SELECT FirstName, LastName, Company FROM customers WHERE Company IS NOT NULL 

5) SELECT DISTINCT BillingCity FROM invoices ORDER BY BillingCity DESC

6) SELECT Title FROM albums WHERE Title LIKE "%OF%" ORDER BY Title ASC

7) SELECT t.name, g.name FROM genres g JOIN tracks t ON g.GenreId = t.GenreId

8) SELECT t.name, a.Title FROM albums a JOIN tracks t ON a.AlbumId = t.AlbumId ORDER BY a.Title DESC