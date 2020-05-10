--Query all of the entries in the Genre table
SELECT * FROM Genre;

--Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO Artist (ArtistName, YearEstablished)
VALUES ("Cholly P", "2000");


--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
select * from Album;

INSERT into Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES ("The Entertainer", 2012, 2578, "Atlantic Records", 30, 13);


--Using the INSERT statement, add some songs that are on that album to the Song table.
select * from Song;

INSERT INTO Song
VALUES (null, "Stay Up", "185", "2/14/2012", 13, 30, 23);

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
SELECT s.Title as SongTitle, al.Title as AlbumTitle, ar.ArtistName
FROM Song s
LEFT JOIN Album al
ON s.AlbumId = al.AlbumId
LEFT JOIN Artist ar
ON s.ArtistId = ar.ArtistId
WHERE ar.ArtistName = Cholly P;

-- Reminder: Direction of join matters. Try the following statements and see the difference in results.

SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;

-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

-- Modify the previous query to also display the title of the album.