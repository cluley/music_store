-- Название и продолжительность самого длительного трека.
SELECT name, lasting
FROM track
ORDER BY lasting DESC
LIMIT 1;

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT name 
FROM track 
WHERE lasting >= '00:03:30'
ORDER BY lasting;

-- Названия сборников, вышедших в период с 2008 по 2011 год включительно.
SELECT name 
FROM collection
WHERE release_year BETWEEN 2008 AND 2011;

-- Исполнители, чьё имя состоит из одного слова.
SELECT name 
FROM artist
WHERE name NOT LIKE '% %';

-- Название треков, которые содержат слово «The» или «the».
SELECT name 
FROM artist
WHERE name LIKE '%The%' OR name LIKE '%the%';