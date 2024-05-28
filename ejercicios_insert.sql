/* INSERT */

INSERT INTO artists(Name)
VALUES ("Sodom");

INSERT INTO albums(Title, ArtistId)
VALUES ("M-16", "276");

INSERT INTO tracks(Name, AlbumId, MediaTypeId, Milliseconds, UnitPrice)
VALUES ("M-16", "276", "2", "289000", "0,99"),
       ("Surfin'Bird", "276", "2", "159000", "0,99"),           
	   ("Cannon Fodder", "276", "2", "233000", "0,99");	             

/* UPDATE */

UPDATE artists 
SET name = "Korn"
WHERE name = "Possessed" 

UPDATE tracks 
SET Bytes = "233425"
WHERE AlbumId = 276 

/* DELETE */

DELETE FROM tracks 
WHERE AlbumId = 351

DELETE FROM albums 
WHERE AlbumId = 351

DELETE FROM artists 
WHERE ArtistId = 276
