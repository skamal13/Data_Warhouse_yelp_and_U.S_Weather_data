CREATE TABLE dwh_dim_bussines_hours (
	business_id varchar NOT NULL,
	hours text NULL
);
ALTER TABLE dwh_dim_bussines_hours ADD CONSTRAINT dwh_dim_bussines_hours_pk PRIMARY KEY (business_id);

