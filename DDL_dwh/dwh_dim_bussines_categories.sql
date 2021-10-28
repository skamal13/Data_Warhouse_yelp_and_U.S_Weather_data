CREATE TABLE dwh_dim_bussines_categories (
	business_id varchar NOT NULL,
	categories text NULL
);
ALTER TABLE dwh_dim_bussines_categories ADD CONSTRAINT dwh_dim_bussines_categories_pk PRIMARY KEY (business_id);

