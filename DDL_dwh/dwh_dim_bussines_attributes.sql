CREATE TABLE dwh_dim_bussines_attributes (
	business_id varchar NOT NULL,
	"attributes" text NULL
);
ALTER TABLE dwh_dim_bussines_attributes ADD CONSTRAINT dwh_dim_bussines_attributes_pk PRIMARY KEY (business_id);

