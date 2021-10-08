----------Creating Tables/Setting Foreign Keys----------

# Notice that categories like 'movie_director' and 'movie_distributor' are integers:
# This is because we are linking them up to foreign keys which are integers.
# Foreign key relationships must have the same data types.
CREATE TABLE movie (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(30),
    movie_director INT,
    movie_year INT,
    movie_main_actor VARCHAR (30),
    movie_genre VARCHAR (20),
    movie_distributor INT,
    movie_budget bigINT,
    movie_revenue bigINT
);

CREATE TABLE director (
    director_id INT PRIMARY KEY,
    director_first_name VARCHAR (20),
    director_last_name VARCHAR(20)
);

ALTER TABLE movie
ADD FOREIGN KEY(movie_director)
REFERENCES director(director_id)
ON DELETE SET NULL;

CREATE TABLE distributor (
    distributor_id INT PRIMARY KEY,
    distributor_name VARCHAR (30)
);

ALTER TABLE movie
ADD FOREIGN KEY(movie_distributor)
REFERENCES distributor(distributor_id)
ON DELETE SET NULL;

----------Inserting Values into Tables----------

# Notice that when inserting these values, for the columns where we have foreign key
# relationships, 'NULL' is inputted: we must use an 'UPDATE' statement to input these
# values due to this foreign key relationship.
INSERT INTO movie VALUES(1, 'Goodfellas', NULL, 1990, 'Ray Liotta', 'Gangster', NULL, 25000000, 47100000);
INSERT INTO movie VALUES(2, 'Pulp Fiction', NULL, 1994, 'John Travolta', 'Gangster', NULL, 8250000, 213900000);
INSERT INTO movie VALUES(3, 'The Grand Budapest Hotel', NULL, 2014, 'Ralph Fiennes', 'Dramedy', NULL, 25000000, 1729000000);
INSERT INTO movie VALUES(4, 'The Godfather', NULL, 1972, 'Al Pacino', 'Gangster', NULL, 6500000, 260000000);
INSERT INTO movie VALUES(5, 'Nightcrawler', NULL, 2014, 'Jake Gyllenhaal', 'Thriller', NULL, 8500000, 50300000);
INSERT INTO movie VALUES(6, 'The Social Network', NULL, 2010, 'Jesse Eisenberg', 'Drama', NULL, 40000000, 224900000);
INSERT INTO movie VALUES(7, 'There Will Be Blood', NULL, 2007, 'Daniel Day-Lewis', 'Drama', NULL, 25000000, 76200000);
INSERT INTO movie VALUES(8, 'The Hateful Eight', NULL, 2015, 'Kurt Russell', 'Western Thriller', NULL, 25000000, 76200000);
INSERT INTO movie VALUES(9, 'A Bronx Tale', NULL, 1993, 'Chazz Palminteri', 'Gangster', NULL, 10000000, 17300000);
INSERT INTO movie VALUES(10, 'Wedding Crashers', NULL, 2005, 'Owen Wilson', 'Comedy', NULL, 40000000, 288500000);
INSERT INTO movie VALUES(11, 'Dodgeball', NULL, 2004, 'Vince Vaughn', 'Comedy', NULL, 20000000, 168400000);
INSERT INTO movie VALUES(12, 'Citizen Kane', NULL, 1941, 'Orson Welles', 'Drama', NULL, 840000, 1600000);
INSERT INTO movie VALUES(13, 'Parasite', NULL, 2019, 'Song Kang-ho', 'Black Comedy', NULL, 15500000, 259000000);
INSERT INTO movie VALUES(14, 'Inglourious Basterds', NULL, 2009, 'Brad Pitt', 'Dramedy', NULL, 70000000, 321500000);
INSERT INTO movie VALUES(15, 'Avatar', NULL, 2009, 'Sam Worthington', 'Science Fiction', NULL, 237000000, 2847000000);
INSERT INTO movie VALUES(16, 'Jaws', NULL, 1975, 'Roy Scheider', 'Thriller', NULL, 9000000, 472000000);
INSERT INTO movie VALUES(17, 'Psycho', NULL, 1960, 'Anthony Perkins', 'Horror', NULL, 807000, 50000000);
INSERT INTO movie VALUES(18, 'Boogie Nights', NULL, 1997, 'Mark Wahlberg', 'Dramedy', NULL, 15000000, 43100000);
INSERT INTO movie VALUES(19, 'Zodiac', NULL, 2007, 'Jake Gyllenhaal', 'Mystery', NULL, 75000000, 84700000);
INSERT INTO movie VALUES(20, 'The Royal Tenenbaums', NULL, 2001, 'Gene Hackman', 'Dramedy', NULL, 21000000, 71400000);

INSERT INTO director VALUES(1, 'Martin', 'Scorsese');
INSERT INTO director VALUES(2, 'Quentin', 'Tarantino');
INSERT INTO director VALUES(3, 'Wes', 'Anderson');
INSERT INTO director VALUES(4, 'Francis', 'Ford Coppola');
INSERT INTO director VALUES(5, 'Dan', 'Gilroy');
INSERT INTO director VALUES(6, 'David', 'Fincher');
INSERT INTO director VALUES(7, 'Paul', 'Thomas Anderson');
INSERT INTO director VALUES(8, 'Robert', 'De Niro');
INSERT INTO director VALUES(9, 'David', 'Dobkin');
INSERT INTO director VALUES(10, 'Rawson', 'Marshall Thurber');
INSERT INTO director VALUES(11, 'Orson', 'Welles');
INSERT INTO director VALUES(12, 'Bong', 'Joon-ho');
INSERT INTO director VALUES(13, 'James', 'Cameron');
INSERT INTO director VALUES(14, 'Steven', 'Spielberg');
INSERT INTO director VALUES(15, 'Alfred', 'Hitchcock');

INSERT INTO distributor VALUES(1, 'Warner Bros');
INSERT INTO distributor VALUES(2, 'Miramax');
INSERT INTO distributor VALUES(3, 'Fox Searchlight');
INSERT INTO distributor VALUES(4, 'Paramount Pictures');
INSERT INTO distributor VALUES(5, 'Open Road Films');
INSERT INTO distributor VALUES(6, 'Sony Pictures');
INSERT INTO distributor VALUES(7, 'Paramount Vantage');
INSERT INTO distributor VALUES(8, 'The Weinstein Company');
INSERT INTO distributor VALUES(9, 'Savoy Pictures');
INSERT INTO distributor VALUES(10, 'New Line Cinema');
INSERT INTO distributor VALUES(11, '20th Century Fox');
INSERT INTO distributor VALUES(12, 'RKO Radio Pictures');
INSERT INTO distributor VALUES(13, 'CJ Entertainment');
INSERT INTO distributor VALUES(14, 'Universal Pictures');
INSERT INTO distributor VALUES(15, 'Buena Vista Pictures');

----------Updating 'movie' Table with Director Foreign Key----------

UPDATE movie
SET movie_director = 1
WHERE movie_id = 1;

UPDATE movie
SET movie_director = 2
WHERE movie_id in (2, 8, 14);

UPDATE movie
SET movie_director = 3
WHERE movie_id in (3, 20);

UPDATE movie
SET movie_director = 4
WHERE movie_id = 4;

UPDATE movie
SET movie_director = 5
WHERE movie_id = 5;

UPDATE movie
SET movie_director = 6
WHERE movie_id in (6, 19);

UPDATE movie
SET movie_director = 7
WHERE movie_id in (7, 18);

UPDATE movie
SET movie_director = 8
WHERE movie_id = 9;

UPDATE movie
SET movie_director = 9
WHERE movie_id = 10;

UPDATE movie
SET movie_director = 10
WHERE movie_id = 11;

UPDATE movie
SET movie_director = 11
WHERE movie_id = 12;

UPDATE movie
SET movie_director = 12
WHERE movie_id = 13;

UPDATE movie
SET movie_director = 13
WHERE movie_id = 15;

UPDATE movie
SET movie_director = 14
WHERE movie_id = 16;

UPDATE movie
SET movie_director = 15
WHERE movie_id = 17;

----------Updating 'movie' Table with Distributor Foreign Key----------

UPDATE movie
SET movie_distributor = 1
WHERE movie_id = 1;

UPDATE movie
SET movie_distributor = 2
WHERE movie_id = 2;

UPDATE movie
SET movie_distributor = 3
WHERE movie_id = 3;

UPDATE movie
SET movie_distributor = 4
WHERE movie_id in (4, 17, 19);

UPDATE movie
SET movie_distributor = 5
WHERE movie_id = 5;

UPDATE movie
SET movie_distributor = 6
WHERE movie_id = 6;

UPDATE movie
SET movie_distributor = 7
WHERE movie_id = 7;

UPDATE movie
SET movie_distributor = 8
WHERE movie_id in (8, 14);

UPDATE movie
SET movie_distributor = 9
WHERE movie_id = 9;

UPDATE movie
SET movie_distributor = 10
WHERE movie_id in (10, 18);

UPDATE movie
SET movie_distributor = 11
WHERE movie_id in (11, 15);

UPDATE movie
SET movie_distributor = 12
WHERE movie_id = 12;

UPDATE movie
SET movie_distributor = 13
WHERE movie_id = 13;

UPDATE movie
SET movie_distributor = 14
WHERE movie_id = 16;

UPDATE movie
SET movie_distributor = 15
WHERE movie_id = 20;

----------Querying for Specific Pieces of Information----------

---Query movies that came out in the year 2000 or later---
SELECT * FROM MOVIE
WHERE movie.movie_year >= 2000;

---Query top 5 movies by budget, and list in descending order---
SELECT movie.movie_name, movie.movie_budget
FROM movie
ORDER BY movie_budget DESC
LIMIT 5;

---Query the distinct names of directors (do not show duplicates) and order in ascending order by last name---
SELECT DISTINCT director_first_name, director_last_name
FROM director
ORDER BY director_last_name ASC;

---Calculate average of movie_budget column---
SELECT AVG(movie_budget)
FROM movie;

---Calculate how many of each 'movie_genre' appears---
SELECT movie_genre, COUNT(movie_genre)
FROM movie
GROUP BY movie_genre
ORDER BY COUNT(movie_genre) DESC;

---Query all types of'comedy' genres---
SELECT movie_name, movie_genre
FROM movie
WHERE movie_genre LIKE '%edy%';

---Query names of all movies and all director last names at once---
SELECT movie_name AS movies_and_directors FROM movie
UNION
SELECT director_last_name FROM director;

---Query names of all movies with name of its respective director---
SELECT movie.movie_name, director.director_first_name, director.director_last_name
FROM movie
JOIN director
ON movie.movie_director = director.director_id
ORDER BY movie_name;

SELECT * FROM movie;
SELECT * FROM director;