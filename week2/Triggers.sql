-- Triggers
    -- A trigger is defined as any events that sets a course of sequence/ action in a realtime environment
    --EXAMPLE:
        -- **Types of Event**
            -- INSERT, UPDATE, DELETE, TRUNCATE
            -- Triggers can be associated on tables or views
        -- **When it happen**
            -- BEFORE
            -- AFTER
            --INSTED
        -- **Level**
            -- TABLE
            -- Row

CREATE TABLE players(
    players_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE player_audits(
    player_audits SERIAL PRIMARY KEY,
    players_id INT NOT NULL,
    name VARCHAR(100),
    edit_date TIMESTAMP NOT NULL
)

-- To create the functions
CREATE OR REPLACE FUNCTION fn_player_name_changer_log()
    RETURN Trigger
    LANGUAGE PLPGSQL
    AS
    $$
        BEGIN

            IF NEW.name <> OLD.name
                INSERT INTO player_audits (players_id, name, edit_date) VALUES (OLD.players_id, OLD.name, NOW())
            END IF

            RETURN NEW;
        END
    $$

-- To create the TRIGGER
CREATE TRIGGER trigger_players_name_changes
    --  BEFORE|AFTER|INSTED     INSERT|UPDATE|DELETE|TRUNCATE
    BEFORE UPDATE
    ON players
    FOR EACH Row
        EXECUTE PROCEDURE fn_player_name_changer_log();


-- To drop the functions
-- We have to drop the triggers.
-- We can do it with the pgAdmin.
