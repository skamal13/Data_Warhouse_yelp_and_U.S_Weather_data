CREATE TABLE dwh_fact_business (
	business_id varchar NULL,
	review_count int8 NULL,
	stars_count int8 NULL
);
ALTER TABLE dwh_fact_business ADD CONSTRAINT dwh_fact_business_pk PRIMARY KEY (business_id);
ALTER TABLE dwh_fact_business ADD CONSTRAINT dwh_fact_business_fk FOREIGN KEY (business_id) REFERENCES public.dwh_dim_bussines(business_id);
ALTER TABLE dwh_fact_business ADD CONSTRAINT dwh_fact_business_fk_1 FOREIGN KEY (business_id) REFERENCES public.dwh_dim_bussines_categories(business_id);
ALTER TABLE dwh_fact_business ADD CONSTRAINT dwh_fact_business_fk_2 FOREIGN KEY (business_id) REFERENCES public.dwh_dim_bussines_attributes(business_id);
ALTER TABLE dwh_fact_business ADD CONSTRAINT dwh_fact_business_fk_3 FOREIGN KEY (business_id) REFERENCES public.dwh_dim_bussines_hours(business_id);
ALTER TABLE dwh_fact_business ADD CONSTRAINT dwh_fact_business_fk_4 FOREIGN KEY (business_id) REFERENCES public.dwh_dim_bussines_checkin(business_id);
ALTER TABLE dwh_fact_business ADD CONSTRAINT dwh_fact_business_fk_5 FOREIGN KEY (business_id) REFERENCES public.dwh_dim_bussines_tip(business_id);



