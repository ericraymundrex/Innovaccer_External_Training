-- JSON Javascript Object notiation
-- JSON  - This store in the ASCII
-- JSONB - This store in the binary formate. This is the faster over text.
-- There are two types.
    -- Array - When there is more than one objects
    [
        {
            'actor_id':1,
            'first_name':'Malin',
            'last_name':'Akerman'
        },
        {
            'actor_id':2
            'first_name':'leonard',
            'last_name':'dicaprio'
        }
    ]
    -- We have to use the single quote


-- IMPORTANT TO NOTE:

SELECT '{"title":"Iron Man"}'
-- By default this store in the text.

SELECT '{"title":"Iron Man"}'::TEXT

-- This will store in the text.

SELECT '{"title":"Iron Man"}'::JSON
-- This will store as the JSON formate.

SELECT '{"

title":"Iron Man"}'::JSONB

-- This will remove the spaces.

CREATE TABLE books (
    bookid SERIAL PRIMARY KEY,
    bookinfo JSONB
);

INSERT INTO books (bookinfo) VALUES ('{"title":"book3"}')

-- NOW TAKE ONLY THE TITLE FROM BOOK INFO.
SELECT bookid, bookinfo->'title' FROM books
-- OUTPUT: 1 "book3"

-- TO remove the double quotes, to get only the value.
SELECT bookid, bookinfo->>'title' FROM books
-- OUTPUT: 1 book3

-- To update th value in the JSON.
UPDATE books SET bookinfo=bookinfo || '{"Author":"Author 1"}'
WHERE bookid =1;
-- This will change the Author to what we are giving as the value, this will add the new author.

-- To update the value with the key
UPDATE books SET bookinfo=bookinfo || '{"Author":"Author 1","Category":"Science"}'
WHERE bookinfo ->> 'author'='Author 1'

-- To remove a key
UPDATE books SET bookinfo=bookinfo - 'Category'
WHERE bookinfo ->> 'author'='Author 1'

-- TO CHANGE FROM **RELATIONAL MODEL** TO **JSON**
-- Here we have to use row_to_json()

SELECT row_to_json(directors) FROM directors;

-- When we don't need all the columns then

SELECT row_to_json(mydirections) FROM (SELECT director_id, first_name, last_name from directors) AS mydirections;

