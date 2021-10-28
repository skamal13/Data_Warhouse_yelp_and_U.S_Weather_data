select 
  review_id, 
  user_id, 
  business_id, 
  stars, 
  useful, 
  funny, 
  cool, 
  text, 
  CAST(date AS DATE) AS date, 
  min_temperature, 
  max_temperature, 
  (
    (
      max_temperature + min_temperature
    )/ 2
  ) as avg_temperature 
from 
  dwh_fact_bussines_review dfbr 
  inner join dwh_fact_temperature_precipitation dftp on (dfbr.dateCAST AS DATE)= dftp.date
