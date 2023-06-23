CREATE TABLE IF NOT EXISTS Genre (
Genre_id SERIAL PRIMARY KEY,
Name VARCHAR(57) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
Artist_id SERIAL PRIMARY KEY,
Name VARCHAR(120) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreArtist (
Genre_id INTEGER REFERENCES Genre(Genre_id),
Artist_id INTEGER REFERENCES Artist(Artist_id),
CONSTRAINT Gen_Art PRIMARY KEY (Genre_id, Artist_id)
);

CREATE TABLE IF NOT EXISTS Album (
Album_id SERIAL PRIMARY KEY,
Name VARCHAR(120) NOT NULL,
Release_Year smallint NOT NULL
);

CREATE TABLE IF NOT EXISTS ArtistAlbum (
Artist_id INTEGER REFERENCES Artist(Artist_id),
Album_id INTEGER REFERENCES Album(Album_id),
CONSTRAINT Art_Alb PRIMARY KEY (Artist_id, Album_id)
);

CREATE TABLE IF NOT EXISTS Track (
Track_id SERIAL PRIMARY KEY,
Name VARCHAR(120) NOT NULL,
Lasting TIME NOT NULL,
Album_id INTEGER REFERENCES Album(Album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
Collection_id SERIAL PRIMARY KEY,
Name VARCHAR(120) NOT NULL,
Release_Year smallint NOT NULL
);

CREATE TABLE IF NOT EXISTS CollectionTrack (
Collection_id INTEGER REFERENCES Collection(Collection_id),
Track_id INTEGER REFERENCES Track(Track_id),
CONSTRAINT col_trk PRIMARY KEY (Collection_id, Track_id)
);