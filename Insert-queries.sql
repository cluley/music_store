INSERT INTO Artist (name)
VALUES ('Queens of the Stone Age'),
('The Prodigy'),
('Nine inch Nails'),
('N.W.A');

INSERT INTO Genre (name)
VALUES ('Rock'),
('Breakbeat'),
('Hip Hop'),
('Ambient');

INSERT INTO Album (name, release_year)
VALUES ('Queens of the Stone Age', 1998), 
('Experience', 1992), 
('And All That Could Have Been/Still', 2002), 
('Straight Outta Compton', 1988);

INSERT INTO Track (name, lasting, album_id)
VALUES ('If Only', '00:03:22', 1),
('Walkin on the Sidewalks', '00:05:01', 1),
('Out of Space', '00:05:02', 2),
('Weather Experience', '00:08:04', 2),
('Adrift & At Peace', '00:02:52', 3),
('The Day The World Went Away', '00:05:17', 3),
('Fuck Tha Police', '00:05:45', 4),
('Express Yourself', '00:04:45', 4),
('You Think I Aint Worth A Dollar, But I Feel Like A Millionaire', '00:02:36', 1);

INSERT INTO Collection (name, release_year)
VALUES ('Essential Bands', 2006),
('Smack My Rockafeller Skank', 2011),
('while(1<2)', 2014),
('California Love', 2010);

INSERT INTO GenreArtist (genre_id, artist_id)
VALUES (1, 1), 
(1, 3), 
(2, 2),
(3, 4),
(4, 3);

INSERT INTO ArtistAlbum (artist_id, album_id)
VALUES (1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO CollectionTrack (collection_id, track_id)
VALUES (1, 1), (1, 8),
(2, 1), (2, 2), (2, 3), (2, 4),
(3, 3), (3, 6),
(4, 4), (4, 5), (4, 6), (4, 7);