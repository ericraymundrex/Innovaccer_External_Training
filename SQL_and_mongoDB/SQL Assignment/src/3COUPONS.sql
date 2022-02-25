CREATE TABLE COUPONS(
	ID INT NOT NULL,
	PERCENT INT NOT NULL,
	CODE SERIAL,
	MAXAMOUNT INT NOT NULL DEFAULT 1000,
	EXP_DATE DATE NOT NULL DEFAULT NOW()
);

ALTER TABLE COUPONS
	ADD CONSTRAINT FK
	FOREIGN KEY(ID) REFERENCES CUSTOMER(ID)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
	