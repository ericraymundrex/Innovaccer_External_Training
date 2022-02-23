-- AGGREGATE FUNCITONS
    -- SUM, MAX, MIN, COUNT, AVG
SELECT * FROM movies;

SELECT COUNT(*) FROM MOVIES;        -- (1)
SELECT COUNT(movie_id) FROM MOVIES: -- (2)

-- IMPORTANT TO NOTE:
    -- 2nd query is more optimised, this is beacuse the count(*) will take all the columns into consideration, this is not necessary
