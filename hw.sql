-- question 1 --
SELECT * FROM movies;

-- question 2 --

SELECT title, id
FROM movies
WHERE id BETWEEN 1 and 10


-- question 3 -- 
SELECT *
FROM movies
WHERE id = 485

-- question 4 --

SELECT id
FROM movies
WHERE title = 'Made in America (1993)'

-- question 5 --

SELECT *
FROM movies
WHERE id BETWEEN 1 AND 10
ORDER BY title

-- question 6 -- 

SELECT *
FROM movies
WHERE title LIKE "%(2002)%"

-- question 7 -- 

SELECT *
FROM movies
WHERE title LIKE "%Godfather%";

-- question 8 -- 

SELECT *
FROM movies
WHERE genres LIKE "%Comedy%";

-- question 9 -- question

SELECT *
FROM movies
WHERE title LIKE '%(2000)%' AND genres LIKE '%Comedy%';

-- question 10 -- 

SELECT *
FROM movies
WHERE title LIKE '%death%' AND genres LIKE '%Comedy%';

-- I was thinking there would be a TAG "death" and that we 
--needed to join the two databases (tags & movies)
-- because logically, just because
-- a movie has "death" in the title doesn't mean it is about death.
-- And some movies about death do not have "death" in the title.  So
-- this question needs to be more specific.

-- question 11 --

SELECT *
FROM movies
WHERE title LIKE '%super%' AND (title LIKE '%(2001)%' OR title LIKE '%(2002)');

-- question 12 --

SELECT movies.title, ratings.rating
FROM ratings
INNER JOIN movies ON ratings.user_id=movies.id
WHERE ratings.user_id=858 AND movies.id=858;

-- question 13 -- 

SELECT movies.title, ratings.rating
FROM ratings
INNER JOIN movies ON ratings.user_id=movies.id
WHERE ratings.user_id=858 AND movies.id=858
ORDER BY ratings.timestamp DESC;