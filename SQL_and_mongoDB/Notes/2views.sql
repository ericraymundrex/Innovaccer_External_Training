-- VIEWS
-- virtual representation of any statement and you give a particular name to that statement which act as virtual table where you can perform operations without affecting the actual table 
-- View does not take so much memory, it does not duplicate the table.
-- This is real only.

CREATE OR REPLACE VIEWS moviedetails
AS 
    SELECT movies.*, directors.first_name, directors.last_name from MOVIES
    INNER JOIN directors
    ON movieies.director_id=directors.director_id;