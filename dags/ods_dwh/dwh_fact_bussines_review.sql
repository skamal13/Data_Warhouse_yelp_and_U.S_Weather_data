CREATE TABLE dwh_fact_bussines_review (
	review_id varchar NOT NULL,
	user_id varchar NULL,
	business_id varchar NULL,
	stars int8 NULL,
	useful int8 NULL,
	funny int8 NULL,
	cool int8 NULL,
	"text" text NULL,
	"date" timestamp NULL,
	CONSTRAINT stg_yelp_academic_dataset_review_pk_1 PRIMARY KEY (review_id)
);
