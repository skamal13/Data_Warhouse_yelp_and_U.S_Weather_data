CREATE TABLE ods_yelp_academic_dataset_tip (
	id_tip int8 NULL,
	user_id varchar NULL,
	business_id varchar NULL,
	"text" text NULL,
	"date" timestamp NULL,
	compliment_count int8 NULL,
	CONSTRAINT ods_yelp_academic_dataset_tip_pk PRIMARY KEY (id_tip)
);

ALTER TABLE ods_yelp_academic_dataset_tip ADD CONSTRAINT ods_yelp_academic_dataset_tip_fk FOREIGN KEY (business_id) REFERENCES public.ods_yelp_academic_dataset_business(business_id);
ALTER TABLE ods_yelp_academic_dataset_tip ADD CONSTRAINT ods_yelp_academic_dataset_tip_fk_1 FOREIGN KEY (user_id) REFERENCES public.ods_yelp_academic_dataset_user(user_id);


