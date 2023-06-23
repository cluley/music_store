-- Количество исполнителей в каждом жанре.
SELECT g.name, count(Artist_id) FROM GenreArtist g_a
LEFT JOIN genre g ON g_a.genre_id = g.genre_id 
GROUP BY g.name;

-- Количество треков, вошедших в альбомы 1995-2005 годов.
SELECT a.name, COUNT(t.Track_id) FROM Track t
LEFT JOIN Album a ON t.album_id = a.album_id 
WHERE a.release_year BETWEEN 1995 AND 2005
GROUP BY a.name;

-- Средняя продолжительность треков по каждому альбому.
SELECT a.name, AVG(t.lasting) lasting FROM Track t
JOIN Album a ON t.album_id = a.album_id 
GROUP BY a.name
ORDER BY lasting DESC;

-- Все исполнители, которые не выпустили альбомы в 1998 году.
SELECT art.name FROM Album alb
LEFT JOIN ArtistAlbum aa ON alb.album_id = aa.album_id 
LEFT JOIN Artist art ON aa.Artist_id = art.Artist_id
WHERE release_year != 1998;

-- Названия сборников, в которых присутствует Queens of the Stone Age.
SELECT col.name FROM Collection col
LEFT JOIN CollectionTrack ct ON col.collection_id = ct.collection_id 
LEFT JOIN Track trc ON ct.track_id = trc.track_id 
LEFT JOIN Album alb ON trc.album_id = alb.album_id 
LEFT JOIN ArtistAlbum aa ON alb.album_id = aa.album_id 
LEFT JOIN Artist art ON aa.artist_id = art.artist_id 
WHERE art.name = 'Queens of the Stone Age';