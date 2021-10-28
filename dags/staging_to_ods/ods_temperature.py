from datetime import datetime, timedelta
from airflow.models import Variable
import json

dag = {
	"owner" : "syamsul",
	"project" : Variable.get("xxxx"),
	"schedule_interval" : "@daily",
	"config": {
		"retries" : 1,
		"catchup" : False,
		"retry_delay": timedelta(minutes=5),
		"start_date" : datetime(2021, 1, 18),
		"email": json.loads(Variable.get("xxxxx")),
		"email_on_failure": False
	},
	"query" : """
		INSERT INTO 
        select PARSE_DATE("%Y%m%d",date ) as date,min,max,normal_min,normal_max
        from stg_temperature
	""",
	"destination" : {
		"bigquery_conn_id" : "xxx",
		"google_cloud_storage_conn_id" : "xxx",
		"project" :Variable.get("xxxx"),
		"database" : Variable.get("xxxx"),
		"table" : "ods_temperature",
		"write_disposition" : "WRITE_APPEND",
		"use_legacy_sql" : False
	}
}