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
-- needed to join the two databases (tags & movies)
-- because logically, just because
-- a movie has "death" in the title doesn't mean it is about death.
-- And some movies about death do not have "death" in the title.  So
-- this question needs to be more specific?

-- question 11 --

SELECT *
FROM movies
WHERE title LIKE '%super%' AND (title LIKE '%(2001)%' OR title LIKE '%(2002)');

-- question 12 --

SELECT movies.title, ratings.rating
FROM ratings
INNER JOIN movies ON ratings.movie_id=movies.id
WHERE ratings.movie_id=858;

-- question 13 -- 

SELECT movies.title, ratings.rating
FROM ratings
INNER JOIN movies ON ratings.movie_id=movies.id
WHERE ratings.movie_id=858;
ORDER BY ratings.timestamp DESC;

-- question 14 --

SELECT movies.title, links.imdb_id
FROM links
INNER JOIN movies ON links.movie_id=movies.id
WHERE movies.title LIKE '%(2005)%' AND movies.genres LIKE '%Comedy%';

-- question 15 --

-- id is in MOVIES but not in RATINGS - thanks Google

SELECT movies.title 
FROM   movies
LEFT OUTER JOIN ratings
  ON (movies.id = ratings.movie_id)
  WHERE ratings.movie_id IS NULL;


-- question 16 --

SELECT AVG (ratings.rating), movies.title
FROM movies
INNER JOIN ratings ON ratings.movie_id=movies.id
WHERE movies.id = 1


-- question 17--

SELECT SUM (ratings.rating), movies.title
FROM movies
INNER JOIN ratings ON ratings.movie_id=movies.id
WHERE movies.id = 1

-- question 18 --

SELECT SUM (id)
FROM movies
WHERE genres= 'Comedy'

-- question 19 --

SELECT AVG (rating), user_id
FROM ratings
WHERE user_id = 1

-- question 20 --

SELECT rating, user_id
FROM ratings
GROUP BY user_id
ORDER BY rating DESC;

-- question 21

SELECT AVG (rating), user_id
FROM ratings
GROUP BY user_id
ORDER BY rating DESC;

-- question 22 --

SELECT user_id, COUNT (rating)
FROM ratings
GROUP BY user_id
HAVING COUNT (rating) > 50
ORDER BY COUNT (rating) DESC;

-- question 23 --

SELECT AVG (ratings.rating), movies.title
FROM ratings
INNER JOIN movies ON movies.id=ratings.movie_id
GROUP BY ratings.movie_id
HAVING AVG (ratings.rating) > 4
ORDER BY AVG (ratings.rating) DESC

-- #23 doesn't say to order but I did anyway


-- If I were given this list of tasks, I would Create
-- a new document with the takes in an OL andn ot an
-- UL.  I actually skipped on by accident doing this.
-- Then, I would tell whoever provided this list that
-- they need to provide an OL next time.  This sort of
-- situation has actually happened to me at past jobs.