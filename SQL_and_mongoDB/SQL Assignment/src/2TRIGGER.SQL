-- --------------------------------------------------------------------------------------
-- TRIGGER
-- When there is a return, this trigger will be activated.

CREATE OR REPLACE FUNCTION UPDATE_STOCK() RETURNS TRIGGER AS
$BODY$
BEGIN
			IF NEW.RETURNED <> false THEN
				UPDATE ITEM SET STOCK=STOCK+1 WHERE ID=OLD.ITEM;
			END IF;
           RETURN new;
END;
$BODY$
language plpgsql

CREATE TRIGGER updating_the_stocks
BEFORE UPDATE
ON PURCHASE
FOR EACH ROW
	EXECUTE PROCEDURE UPDATE_STOCK();

-- --------------------------------------------------------------------------------------
-- TRIGGER
-- When there is a sale, this trigger will be activated.

CREATE OR REPLACE FUNCTION UPDATE_STOCK_ONSALE() RETURNS TRIGGER AS
$BODY$
BEGIN
			IF NEW.RETURNED <> false THEN
				UPDATE ITEM SET STOCK=STOCK-1 WHERE ID=OLD.ITEM;
			END IF;
           RETURN new;
END;
$BODY$
language plpgsql

CREATE TRIGGER updating_the_stocks_onsale
BEFORE INSERT
ON PURCHASE
FOR EACH ROW
	EXECUTE PROCEDURE UPDATE_STOCK_ONSALE();
