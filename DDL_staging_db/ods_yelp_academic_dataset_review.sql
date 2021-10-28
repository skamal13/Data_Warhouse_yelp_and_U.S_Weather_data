CREATE TABLE ods_yelp_academic_dataset_review (
	review_id varchar NULL,
	user_id varchar NULL,
	business_id varchar NULL,
	stars int8 NULL,
	useful int8 NULL,
	funny int8 NULL,
	cool int8 NULL,
	"text" text NULL,
	"date" timestamp NULL,
	CONSTRAINT ods_yelp_academic_dataset_review_pk PRIMARY KEY (review_id)
);


ALTER TABLE ods_yelp_academic_dataset_review ADD CONSTRAINT ods_yelp_academic_dataset_review_fk FOREIGN KEY (user_id) REFERENCES public.ods_yelp_academic_dataset_user(user_id);
ALTER TABLE ods_yelp_academic_dataset_review ADD CONSTRAINT ods_yelp_academic_dataset_review_fk_1 FOREIGN KEY (business_id) REFERENCES public.ods_yelp_academic_dataset_business(business_id);
ALTER TABLE ods_yelp_academic_dataset_review ADD CONSTRAINT ods_yelp_academic_dataset_review_fk_2 FOREIGN KEY (business_id) REFERENCES public.ods_yelp_academic_dataset_checkin(business_id);

