-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT alb.name FROM Genre gen 
LEFT JOIN GenreArtist g_a ON gen.genre_id = g_a.genre_id 
LEFT JOIN Artist art ON g_a.artist_id = art.artist_id 
LEFT JOIN ArtistAlbum a_a ON art.artist_id = a_a.artist_id 
LEFT JOIN Album alb ON a_a.album_id = alb.album_id 
GROUP BY alb.name
HAVING COUNT(g_a.Genre_id) > 1;

-- Наименования треков, которые не входят в сборники.
SELECT t.name FROM Track t
FULL JOIN CollectionTrack ct ON t.track_id = ct.track_id
GROUP BY t.name
HAVING COUNT(ct.track_id) = 0;

-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT art.name FROM Track trc
LEFT JOIN Album alb ON trc.album_id = alb.album_id 
LEFT JOIN ArtistAlbum aa ON alb.album_id = aa.album_id 
LEFT JOIN Artist art ON aa.artist_id = art.artist_id 
WHERE trc.lasting = (SELECT MIN(lasting) FROM Track);

-- Названия альбомов, содержащих наименьшее количество треков.
WITH AlbumTrackCount AS (
    SELECT a.Name AS AlbumName, COUNT(t.Track_id) AS TrackCount
    FROM Album a
    LEFT JOIN Track t ON a.Album_id = t.Album_id
    GROUP BY a.Name
)
SELECT AlbumName
FROM AlbumTrackCount
WHERE TrackCount = (
    SELECT MIN(TrackCount)
    FROM AlbumTrackCount
);