CREATE TABLE dwh_fact_temperature_precipitation (
	"date" date NOT NULL,
	min_temperature int8 NULL,
	max_temperature int8 NULL,
	normal_min_temperature float8 NULL,
	normal_max_temperature float8 NULL,
	precipitation float8 NULL,
	precipitation_normal float8 NULL,
	CONSTRAINT dwh_fact_temperature_precipitation_pk PRIMARY KEY ("date")
);
