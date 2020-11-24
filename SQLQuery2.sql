--Exercise

--1. Query all of the entries in the Genre table
-- SELECT Id, Label FROM Genre;

--2. Query all the entries in the Artist table and order by the artist's name. 
-- HINT: use the ORDER BY keywords
/* SELECT Id, ArtistName, YearEstablished FROM Artist
ORDER BY ArtistName;*/

--3. Write a SELECT query that lists all the songs in the Song table and include
-- the Artist name

/* SELECT s.Title, a.ArtistName
FROM Song s
LEFT JOIN Artist a on s.ArtistId = a.Id; */

-- 4. Write a SELECT query that lists all the Artists that have a Pop Album
/* SELECT ArtistName 
FROM  Artist a
JOIN Song s on s.ArtistId = a.Id
WHERE s.GenreId = 7; */

-- 5. Write a SELECT query that lists all the Artists that have a Jazz or Rock Album
/* SELECT ArtistName 
FROM  Artist a
JOIN Song s on s.ArtistId = a.Id
WHERE s.GenreId = 7 OR s.GenreId = 4; */

-- 6. Write a SELECT statement that lists the Albums with no songs
/* SELECT a.Title FROM Album a
LEFT JOIN Song s on s.AlbumId = a.Id
WHERE s.AlbumId IS NULL; */

-- 7. Using the INSERT statement, add one of your favorite artists to the Artist table.
--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Jeezy', 2001);
--SELECT * FROM Artist;

-- 8. Using the INSERT statement, add one, or more, albums by your artist to the Album table.
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId , GenreId) VALUES ('Recession', '3/15/2015', 260, 'Self', 21, 9);
--SELECT * FROM Album

-- 9. Using the INSERT statement, add some songs that are on that album to the Song table.
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Vacation', 115, '3/15/2015', 3, 21, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Super Freak', 127, '3/15/2015', 3, 21, 23);
--SELECT * FROM Song

-- 10. Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. 
-- Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

/*SELECT s.Title, ar.ArtistName, a.Title FROM Song s 
LEFT JOIN Album a ON s.AlbumId = a.Id
LEFT JOIN Artist ar ON s.ArtistId = ar.Id */

-- 11. Write a SELECT statement to display how many songs exist for each album. 
--You'll need to use the COUNT() function and the GROUP BY keyword sequence.
/* SELECT a.Title,
COUNT (AlbumId)
FROM Song
LEFT JOIN Album a ON AlbumId = a.Id
GROUP BY (a.Title) */

-- 12. Write a SELECT statement to display how many songs exist for each artist. 
--You'll need to use the COUNT() function and the GROUP BY keyword sequence.
/* SELECT a.ArtistName, COUNT(ArtistId)
FROM Song s
LEFT JOIN Artist a ON a.Id = s.ArtistId
GROUP BY (a.ArtistName) */

-- 13. Write a SELECT statement to display how many songs exist for each genre. 
-- You'll need to use the COUNT() function and the GROUP BY keyword sequence.
/* SELECT g.Label, COUNT(s.Id)
FROM Song s
LEFT JOIN Genre g ON g.Id = s.GenreId
GROUP BY (g.Label) */

-- ??????????????????????????????????????????????
-- 14. Write a SELECT query that lists the Artists that have put out records on more than one record label.
-- Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword
/* SELECT ar.ArtistName, COUNT(a.Label)
FROM Album a
LEFT JOIN Artist ar ON ar.Id = a.ArtistId
GROUP BY (ar.ArtistName) */


-- 15. Using MAX() function, write a select statement to find the album with the longest duration. 
--The result should display the album title and the duration. 
--SELECT MAX(AlbumLength)
--FROM Album

-- 16. Using MAX() function, write a select statement to find the song with the longest duration. 
-- The result should display the song title and the duration.
-- SELECT MAX(SongLength)
-- From Song

-- 17. Modify the previous query to also display the title of the album.
SELECT s.Title, a.Title, s.SongLength
FROM Song s
LEFT JOIN ALbum a ON a.Id = s.AlbumId
WHERE  SongLength = (SELECT MAX(SongLength) FROM Song)





