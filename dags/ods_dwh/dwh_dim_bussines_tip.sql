CREATE TABLE dwh_dim_bussines_tip (
	user_id varchar NULL,
	business_id varchar NULL,
	"text" text NULL,
	"date" timestamp NULL,
	compliment_count int8 NULL,
	CONSTRAINT dwh_dim_bussines_tip_pk PRIMARY KEY (business_id)
);
