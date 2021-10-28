CREATE TABLE stg_precipitation (
	"Date" date NOT NULL,
	precipitation float8 NULL,
	precipitation_normal float8 NULL,
	CONSTRAINT precipitation_pk PRIMARY KEY ("Date")
);

ALTER TABLE stg_precipitation ADD CONSTRAINT stg_precipitation_fk FOREIGN KEY ("Date") REFERENCES stg_temperature(date)
