CREATE TABLE ods_yelp_academic_dataset_business (
	business_id varchar NOT NULL,
	"name" varchar NULL,
	address text NULL,
	city varchar NULL,
	state varchar NULL,
	postal_code varchar NULL,
	latitude float8 NULL,
	longitude float8 NULL,
	stars int2 NULL,
	review_count int8 NULL,
	is_open int NULL,
	"attributes" text NULL,
	categories text NULL,
	hours text NULL,
	CONSTRAINT ods_yelp_academic_dataset_business_pk PRIMARY KEY (business_id)
);

ALTER TABLE ods_yelp_academic_dataset_business ADD CONSTRAINT ods_yelp_academic_dataset_business_fk FOREIGN KEY (business_id) REFERENCES public.ods_yelp_academic_dataset_checkin(business_id);


