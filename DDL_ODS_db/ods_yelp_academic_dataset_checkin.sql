CREATE TABLE ods_yelp_academic_dataset_checkin (
	business_id varchar NOT NULL,
	"date" text NULL,
	CONSTRAINT ods_yelp_academic_dataset_checkin_pk PRIMARY KEY (business_id)
);
ALTER TABLE ods_yelp_academic_dataset_checkin ADD CONSTRAINT ods_yelp_academic_dataset_checkin_fk FOREIGN KEY (business_id) REFERENCES public.ods_yelp_academic_dataset_business(business_id);

