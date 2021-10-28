CREATE TABLE dwh_dim_bussines_checkin (
	business_id varchar NOT NULL,
	"date" text NULL,
	CONSTRAINT dwh_dim_bussines_checkin_pk PRIMARY KEY (business_id)
);
