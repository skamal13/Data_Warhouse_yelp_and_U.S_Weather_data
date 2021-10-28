CREATE TABLE ods_precipitation (
	"Date" date NOT NULL,
	precipitation float8 NULL,
	precipitation_normal float8 NULL,
	CONSTRAINT precipitation_pk PRIMARY KEY ("Date")
);

ALTER TABLE ods_precipitation ADD CONSTRAINT ods_precipitation_fk FOREIGN KEY ("Date") REFERENCES ods_temperature(date)
