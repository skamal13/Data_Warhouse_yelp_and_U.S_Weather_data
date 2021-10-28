CREATE TABLE ods_temperature (
	"date" date NOT NULL,
	min int8 NULL,
	max int8 NULL,
	normal_min float8 NULL,
	normal_max float8 NULL,
	CONSTRAINT temperature_pk PRIMARY KEY ("date")
);
