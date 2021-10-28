# Python lib
from datetime import datetime
import os
import pandas as pd
from glob import glob
from google.oauth2.service_account import Credentials

# Airflow lib
from airflow import DAG
from airflow.operators.dummy import DummyOperator
from airflow.operators.python_operator import PythonOperator


script_name = os.path.splitext(os.path.basename(__file__))[0]

# Default settings applied to all tasks
default_args = {
	'owner': 'syamsul',
	'start_date': datetime(2021, 9, 16)
}


def _csv_to_bigquery():
	PATH = '/home/your_path/'
	EXT = "*.csv"
	all_json_files = [file
					for path, subdir, files in os.walk(PATH)
					for file in glob(os.path.join(path, EXT))]

	# Define target table in BQ
	project_id = "YOUR_PROJECT_ID"
	credential_file = "PATH_TO_YOUR_SERVICE_ACCOUNT_CREDENTIAL_FILE.json"
	credential = Credentials.from_service_account_file(credential_file)


	
	for file in all_json_files:
		new_file=os.path.splitext(file)[0]
		chunks = pd.read_json(file, lines=True, chunksize = 10000)
		for df in chunks:
			df.to_gbq(new_file, project_id=project_id,progress_bar=True, credentials=credential)


	
	

# Dag
with DAG(script_name,
		 schedule_interval="@daily",
		 default_args=default_args,
		  catchup=True 
		 ) as dag:


	start = DummyOperator(task_id='start')

	csv_to_bigquery = PythonOperator(
				task_id='json_to_csv',
				provide_context=True,
				python_callable=_csv_to_bigquery
			)
	
	end = DummyOperator(task_id='end')

	start >> csv_to_bigquery >> end




	
	

