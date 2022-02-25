-- AGGREGATE FUNCITONS
    -- SUM, MAX, MIN, COUNT, AVG

SELECT * FROM movies;

SELECT COUNT(*) FROM MOVIES;        -- (1)
SELECT COUNT(movie_id) FROM MOVIES: -- (2)

-- IMPORTANT TO NOTE:
    -- 2nd query is more optimised, this is beacuse the count(*) will take all the columns into consideration, this is not necessary
    -- Don't use more than one aggregate function.

-- ------------------------------------------------------------------------------------------------------------------------------------------------

-- Group by

SELECT movie_lang FROM movies GROUP BY movie_lang;
    -- We can also have the 2 or more than 2 combinations in the GROUP BY.

-- WHAT IS THE DIFFERENCT BETWEEN WHERE AND HAVING??
SELECT movie_lang, count(movie_lang) FROM movies WHERE count(movie_lang) >5  GROUP BY movie_lang;
    -- This is wrong; this will give the error.
    -- This is beacuse of the itteration.
    -- and logically arrgregate fucntions where not allowed in the WHERE clause


SELECT movie_lang, count(movie_lang) FROM movies WHERE GROUP BY movie_lang HAVING count(movie_lang) >5;

-- INNER JOIN

-- UNION
SELECT first_name, last_name FROM actors
UNION
SELECT first_name, last_name FROM directors;

-- UNION ALL
SELECT first_name, last_name FROM actors
UNION ALL
SELECT first_name, last_name FROM directors;

-- INTERSECT
SELECT first_name, last_name FROM actors
INTERSECT
SELECT first_name, last_name FROM directors;

--EXCEPT
SELECT first_name, last_name FROM actors
EXCEPT
SELECT first_name, last_name FROM directors;
-- -----------------------------
-- SUBQUERIES
    -- NON- CORELATED SUBQUERIES
    SELECT movie_name, movie_length from MOVIES
        WHERE movie_length > (SELECT AVG(movie_length) from movies)
    -- This does not have anything to do with parent query
    -- This does not take so much CPU cycles

    -- CORELATED SUBQUERIES
    SELECT D1.first_name, D1.last_name, d1.date_of_birth FROM directors D1
        WHERE date_of_birth =(SELECT MIN(date_of_birth) FROM directors d2 WHERE d2.nationality = d1.nationality);