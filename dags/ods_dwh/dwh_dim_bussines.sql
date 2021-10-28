CREATE TABLE dwh_dim_bussines (
	business_id varchar NULL,
	"name" varchar NULL,
	address text NULL,
	city varchar NULL,
	state varchar NULL,
	postal_code varchar NULL,
	latitude float8 NULL,
	longitude float8 NULL,
	is_open int4 NULL
);
ALTER TABLE dwh_dim_bussines ADD CONSTRAINT dwh_dim_bussines_pk PRIMARY KEY (business_id);

