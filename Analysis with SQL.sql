
CREATE DATABASE record_company;
USE record_company;


CREATE TABLE bands (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE albums (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id)
);

CREATE TABLE songs (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    length INT,
    album_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (album_id) REFERENCES albums(id)
);

-- Data Insertion from data.sql
INSERT INTO bands(id,name) VALUES (1,'Seventh Wonder');
INSERT INTO bands(id,name) VALUES (2,'Metallica');
INSERT INTO bands(id,name) VALUES (3,'The Ocean');
INSERT INTO bands(id,name) VALUES (4,'Within Temptation');
INSERT INTO bands(id,name) VALUES (5,'Death');
INSERT INTO bands(id,name) VALUES (6,'Van Canto');
INSERT INTO bands(id,name) VALUES (7,'Dream Theater');

INSERT INTO albums(id,name,release_year,band_id) VALUES (1,'Tiara',2018,1);
INSERT INTO albums(id,name,release_year,band_id) VALUES (2,'The Great Escape',2010,1);
INSERT INTO albums(id,name,release_year,band_id) VALUES (3,'Mercy Falls',2008,1);
INSERT INTO albums(id,name,release_year,band_id) VALUES (4,'Master of Puppets',1986,2);
INSERT INTO albums(id,name,release_year,band_id) VALUES (5,'Black Album',1991,2);
INSERT INTO albums(id,name,release_year,band_id) VALUES (6,'Phanerozoic II',2020,3);
INSERT INTO albums(id,name,release_year,band_id) VALUES (7,'Phanerozoic I',2018,3);
INSERT INTO albums(id,name,release_year,band_id) VALUES (8,'The Unforgiving',2011,4);
INSERT INTO albums(id,name,release_year,band_id) VALUES (9,'Resist',2019,4);
INSERT INTO albums(id,name,release_year,band_id) VALUES (10,'The Sound of Perseverance',1998,5);
INSERT INTO albums(id,name,release_year,band_id) VALUES (11,'Tribe of Force',2010,6);
INSERT INTO albums(id,name,release_year,band_id) VALUES (12,'Break the Silence',2011,6);
INSERT INTO albums(id,name,release_year,band_id) VALUES (13,'Metropolis Pt. 2: Scenes from a Memory',1999,7);
INSERT INTO albums(id,name,release_year,band_id) VALUES (14,'Distance over Time',2019,7);

INSERT INTO songs(id,name,length,album_id) VALUES (1,'Arrival',145,1);
INSERT INTO songs(id,name,length,album_id) VALUES (2,'The Everones',267,1);
INSERT INTO songs(id,name,length,album_id) VALUES (3,'Dream Machines',301,1);
INSERT INTO songs(id,name,length,album_id) VALUES (4,'Against the Grain',228,1);
INSERT INTO songs(id,name,length,album_id) VALUES (5,'Victorious',290,1);
INSERT INTO songs(id,name,length,album_id) VALUES (6,'Tiara\'s Song (Farewell Pt. 1)',423,1);
INSERT INTO songs(id,name,length,album_id) VALUES (7,'Goodnight (Farewell Pt. 2)',218,1);
INSERT INTO songs(id,name,length,album_id) VALUES (8,'Beyond Today (Farewell Pt. 3)',244,1);
INSERT INTO songs(id,name,length,album_id) VALUES (9,'The Truth',329,1);
INSERT INTO songs(id,name,length,album_id) VALUES (10,'By the Light of the Funeral Pyres',295,2);
INSERT INTO songs(id,name,length,album_id) VALUES (11,'Tears for a Father',104,2);
INSERT INTO songs(id,name,length,album_id) VALUES (12,'A Day Away',95,2);
INSERT INTO songs(id,name,length,album_id) VALUES (13,'The Black Parade',124,2);
INSERT INTO songs(id,name,length,album_id) VALUES (14,'Album Pt. 1',421,2);
INSERT INTO songs(id,name,length,album_id) VALUES (15,'Album Pt. 2',471,2);
INSERT INTO songs(id,name,length,album_id) VALUES (16,'Album Pt. 3',472,2);
INSERT INTO songs(id,name,length,album_id) VALUES (17,'Album Pt. 4',288,2);
INSERT INTO songs(id,name,length,album_id) VALUES (18,'Mercy Falls',66,3);
INSERT INTO songs(id,name,length,album_id) VALUES (19,'A New Balance',312,3);
INSERT INTO songs(id,name,length,album_id) VALUES (20,'Unbreakable',290,3);
INSERT INTO songs(id,name,length,album_id) VALUES (21,'Tears for a Father',270,3);
INSERT INTO songs(id,name,length,album_id) VALUES (22,'Taint the Sky',389,3);
INSERT INTO songs(id,name,length,album_id) VALUES (23,'Break the Silence',370,3);
INSERT INTO songs(id,name,length,album_id) VALUES (24,'Break the Silence (Live)',370,3);
INSERT INTO songs(id,name,length,album_id) VALUES (25,'Master of Puppets',516,4);
INSERT INTO songs(id,name,length,album_id) VALUES (26,'Battery',311,4);
INSERT INTO songs(id,name,length,album_id) VALUES (27,'The Thing That Should Not Be',396,4);
INSERT INTO songs(id,name,length,album_id) VALUES (28,'Welcome Home (Sanitarium)',398,4);
INSERT INTO songs(id,name,length,album_id) VALUES (29,'Disposable Heroes',496,4);
INSERT INTO songs(id,name,length,album_id) VALUES (30,'Leper Messiah',336,4);
INSERT INTO songs(id,name,length,album_id) VALUES (31,'Damage, Inc.',331,4);
INSERT INTO songs(id,name,length,album_id) VALUES (32,'Enter Sandman',331,5);
INSERT INTO songs(id,name,length,album_id) VALUES (33,'Sad but True',328,5);
INSERT INTO songs(id,name,length,album_id) VALUES (34,'Holier than Thou',229,5);
INSERT INTO songs(id,name,length,album_id) VALUES (35,'The Unforgiven',382,5);
INSERT INTO songs(id,name,length,album_id) VALUES (36,'Wherever I May Roam',396,5);
INSERT INTO songs(id,name,length,album_id) VALUES (37,'Don\'t Tread on Me',244,5);
INSERT INTO songs(id,name,length,album_id) VALUES (38,'Through the Never',244,5);
INSERT INTO songs(id,name,length,album_id) VALUES (39,'Nothing Else Matters',388,5);
INSERT INTO songs(id,name,length,album_id) VALUES (40,'Of Wolf and Man',256,5);
INSERT INTO songs(id,name,length,album_id) VALUES (41,'The God That Failed',309,5);
INSERT INTO songs(id,name,length,album_id) VALUES (42,'My Friend of Misery',409,5);
INSERT INTO songs(id,name,length,album_id) VALUES (43,'The Struggle Within',239,5);
INSERT INTO songs(id,name,length,album_id) VALUES (44,'Triassic',353,6);
INSERT INTO songs(id,name,length,album_id) VALUES (45,'Jurassic | Cretaceous',814,6);
INSERT INTO songs(id,name,length,album_id) VALUES (46,'Eocene',137,6);
INSERT INTO songs(id,name,length,album_id) VALUES (47,'Oligocene',97,6);
INSERT INTO songs(id,name,length,album_id) VALUES (48,'Miocene | Pliocene',562,6);
INSERT INTO songs(id,name,length,album_id) VALUES (49,'Pleistocene',131,6);
INSERT INTO songs(id,name,length,album_id) VALUES (50,'Holocene',175,6);
INSERT INTO songs(id,name,length,album_id) VALUES (51,'The Cambrian Explosion',101,7);
INSERT INTO songs(id,name,length,album_id) VALUES (52,'Ordovician',73,7);
INSERT INTO songs(id,name,length,album_id) VALUES (53,'Silurian',113,7);
INSERT INTO songs(id,name,length,album_id) VALUES (54,'Devonian | Nascent',380,7);
INSERT INTO songs(id,name,length,album_id) VALUES (55,'Carboniferous | Rainforest Collapse',431,7);
INSERT INTO songs(id,name,length,album_id) VALUES (56,'Permian | The Great Dying',533,7);
INSERT INTO songs(id,name,length,album_id) VALUES (57,'Shot in the Dark',315,8);
INSERT INTO songs(id,name,length,album_id) VALUES (58,'In the Middle of the Night',263,8);
INSERT INTO songs(id,name,length,album_id) VALUES (59,'Faster',274,8);
INSERT INTO songs(id,name,length,album_id) VALUES (60,'Fire and Ice',277,8);
INSERT INTO songs(id,name,length,album_id) VALUES (61,'Iron',345,8);
INSERT INTO songs(id,name,length,album_id) VALUES (62,'Where Is the Edge',230,8);
INSERT INTO songs(id,name,length,album_id) VALUES (63,'Sinéad',263,8);
INSERT INTO songs(id,name,length,album_id) VALUES (64,'Lost',275,8);
INSERT INTO songs(id,name,length,album_id) VALUES (65,'Murder',332,8);
INSERT INTO songs(id,name,length,album_id) VALUES (66,'A Demons Fate',236,8);
INSERT INTO songs(id,name,length,album_id) VALUES (67,'Stairway to the Skies',339,8);
INSERT INTO songs(id,name,length,album_id) VALUES (68,'Raise Your Banner',352,9);
INSERT INTO songs(id,name,length,album_id) VALUES (69,'The Reckoning',275,9);
INSERT INTO songs(id,name,length,album_id) VALUES (70,'Endless War',285,9);
INSERT INTO songs(id,name,length,album_id) VALUES (71,'Firelight',251,9);
INSERT INTO songs(id,name,length,album_id) VALUES (72,'Mad World',275,9);
INSERT INTO songs(id,name,length,album_id) VALUES (73,'Mercy Mirror',287,9);
INSERT INTO songs(id,name,length,album_id) VALUES (74,'Supernova',228,9);
INSERT INTO songs(id,name,length,album_id) VALUES (75,'Holy Ground',256,9);
INSERT INTO songs(id,name,length,album_id) VALUES (76,'In Vain',300,9);
INSERT INTO songs(id,name,length,album_id) VALUES (77,'The Sound of Perseverance',541,10);
INSERT INTO songs(id,name,length,album_id) VALUES (78,'Flesh and the Power It Holds',508,10);
INSERT INTO songs(id,name,length,album_id) VALUES (79,'Voice of the Soul',231,10);
INSERT INTO songs(id,name,length,album_id) VALUES (80,'Spirit Crusher',401,10);
INSERT INTO songs(id,name,length,album_id) VALUES (81,'Bite the Pain',421,10);
INSERT INTO songs(id,name,length,album_id) VALUES (82,'Story to Tell',367,10);
INSERT INTO songs(id,name,length,album_id) VALUES (83,'Scavenger of Human Sorrow',428,10);
INSERT INTO songs(id,name,length,album_id) VALUES (84,'To Forgive Is to Suffer',330,10);
INSERT INTO songs(id,name,length,album_id) VALUES (85,'Painkiller',369,10);
INSERT INTO songs(id,name,length,album_id) VALUES (86,'Lost Forever',365,10);
INSERT INTO songs(id,name,length,album_id) VALUES (87,'Lost Forever',362,10);
INSERT INTO songs(id,name,length,album_id) VALUES (88,'Lost Forever (Remastered)',365,10);
INSERT INTO songs(id,name,length,album_id) VALUES (89,'Master of Puppets (Remastered)',515,4);
INSERT INTO songs(id,name,length,album_id) VALUES (90,'Tribe of Force',319,11);
INSERT INTO songs(id,name,length,album_id) VALUES (91,'Last Night of the Kings',241,11);
INSERT INTO songs(id,name,length,album_id) VALUES (92,'Demon Wars',373,11);
INSERT INTO songs(id,name,length,album_id) VALUES (93,'The Higher Flight',198,11);
INSERT INTO songs(id,name,length,album_id) VALUES (94,'Master of Puppets',525,11);
INSERT INTO songs(id,name,length,album_id) VALUES (95,'Battery',315,11);
INSERT INTO songs(id,name,length,album_id) VALUES (96,'Battery (Remastered)',316,11);
INSERT INTO songs(id,name,length,album_id) VALUES (97,'Tribe of Force',328,11);
INSERT INTO songs(id,name,length,album_id) VALUES (98,'Break the Silence',376,12);
INSERT INTO songs(id,name,length,album_id) VALUES (99,'The Seller of Souls',253,12);
INSERT INTO songs(id,name,length,album_id) VALUES (100,'Prisoners of War',383,12);
INSERT INTO songs(id,name,length,album_id) VALUES (101,'One to Ten',235,12);
INSERT INTO songs(id,name,length,album_id) VALUES (102,'My Voice',252,12);
INSERT INTO songs(id,name,length,album_id) VALUES (103,'Blood to Blood',316,12);
INSERT INTO songs(id,name,length,album_id) VALUES (104,'Battery (Live)',310,12);
INSERT INTO songs(id,name,length,album_id) VALUES (105,'Tribute to the Heroes',391,12);
INSERT INTO songs(id,name,length,album_id) VALUES (106,'Tribute to the Heroes (Remastered)',394,12);
INSERT INTO songs(id,name,length,album_id) VALUES (107,'Metropolis Pt. 2: Scenes from a Memory',61,13);
INSERT INTO songs(id,name,length,album_id) VALUES (108,'Regression',130,13);
INSERT INTO songs(id,name,length,album_id) VALUES (109,'Overture 1928',387,13);
INSERT INTO songs(id,name,length,album_id) VALUES (110,'Strange Déjà Vu',343,13);
INSERT INTO songs(id,name,length,album_id) VALUES (111,'Through My Words',105,13);
INSERT INTO songs(id,name,length,album_id) VALUES (112,'Fatal Tragedy',502,13);
INSERT INTO songs(id,name,length,album_id) VALUES (113,'Beyond This Life',642,13);
INSERT INTO songs(id,name,length,album_id) VALUES (114,'Through Her Eyes',372,13);
INSERT INTO songs(id,name,length,album_id) VALUES (115,'Home',785,13);
INSERT INTO songs(id,name,length,album_id) VALUES (116,'The Dance of Eternity',382,13);
INSERT INTO songs(id,name,length,album_id) VALUES (117,'One Last Time',232,13);
INSERT INTO songs(id,name,length,album_id) VALUES (118,'The Spirit Carries On',397,13);
INSERT INTO songs(id,name,length,album_id) VALUES (119,'Finally Free',694,13);
INSERT INTO songs(id,name,length,album_id) VALUES (120,'Untethered Angel',372,14);
INSERT INTO songs(id,name,length,album_id) VALUES (121,'Paralyzed',245,14);
INSERT INTO songs(id,name,length,album_id) VALUES (122,'Fall into the Light',426,14);
INSERT INTO songs(id,name,length,album_id) VALUES (123,'Barstool Warrior',407,14);
INSERT INTO songs(id,name,length,album_id) VALUES (124,'Room 137',279,14);
INSERT INTO songs(id,name,length,album_id) VALUES (125,'S2N',383,14);
INSERT INTO songs(id,name,length,album_id) VALUES (126,'At Wit\'s End',573,14);
INSERT INTO songs(id,name,length,album_id) VALUES (127,'Out of Reach',248,14);
INSERT INTO songs(id,name,length,album_id) VALUES (128,'Pale Blue Dot',499,14);

-- This query retrieves the distinct names of bands associated with the songs in the Songs table

SELECT DISTINCT b.name
FROM songs s
JOIN albums a ON s.album_id = a.id
JOIN bands b ON a.band_id = b.id;


-- This query selects the name and release year of the oldest album in the database

SELECT name, release_year
FROM albums
ORDER BY release_year ASC
LIMIT 1;

-- This query retrieves the distinct names of bands that have at least one album in the database

SELECT DISTINCT b.name
FROM bands b
JOIN albums a ON b.id = a.band_id;

-- This query selects the names of bands that do not have any albums in the database

SELECT name
FROM bands
WHERE id NOT IN (SELECT band_id FROM albums);

-- This query retrieves the album with the longest total length of all its songs

SELECT a.name, SUM(s.length) AS total_length
FROM albums a
JOIN songs s ON a.id = s.album_id
GROUP BY a.name
ORDER BY total_length DESC
LIMIT 1;

-- These queries insert a new band and one of their albums into the bands and albums tables

INSERT INTO bands (name) VALUES ('My Favorite Band');

INSERT INTO albums (name, release_year, band_id) 
VALUES ('My Favorite Album', 2024, (SELECT id FROM bands WHERE name = 'My Favorite Band'));

-- These queries delete the band and album that were added in the previous step

DELETE FROM albums 
WHERE name = 'My Favorite Album';

DELETE FROM bands 
WHERE name = 'My Favorite Band';

-- This query calculates the average length of all songs in the Songs table

SELECT AVG(length) AS average_song_length
FROM songs;

-- This query retrieves the longest song for each album in the database

SELECT a.name AS album_name, s.name AS song_name, MAX(s.length) AS longest_song_length
FROM albums a
JOIN songs s ON a.id = s.album_id
GROUP BY a.name;

-- This query counts the number of songs associated with each band in the database

SELECT b.name AS band_name, COUNT(s.id) AS song_count
FROM bands b
JOIN albums a ON b.id = a.band_id
JOIN songs s ON a.id = s.album_id
GROUP BY b.name;

-- This query adds a new column to the albums table that represents the decade of the album's release

ALTER TABLE albums
ADD COLUMN decade INT AS (release_year DIV 10 * 10);

-- This query selects all albums whose names start with 'The'

SELECT *
FROM albums
WHERE name LIKE 'The%';

-- This query selects all albums released within the specified date range

SELECT *
FROM albums
WHERE release_year BETWEEN 2008 AND 2013;
