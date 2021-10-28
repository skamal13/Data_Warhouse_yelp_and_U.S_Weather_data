# Python lib
from datetime import datetime
import os
import pandas as pd
from glob import glob


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


def _convert_json_to_csv():
	PATH = '/home/your_path/'
	EXT = "*.json"
	all_json_files = [file
					for path, subdir, files in os.walk(PATH)
					for file in glob(os.path.join(path, EXT))]

	for file in all_json_files:
		new_file=os.path.splitext(file)[0]
		chunks = pd.read_json(file, lines=True, chunksize = 10000)
		for c in chunks:
			c.to_csv(new_file+'.csv', mode='a',index=False)
	
	

# Dag
with DAG(script_name,
		 schedule_interval="@daily",
		 default_args=default_args,
		  catchup=True 
		 ) as dag:


	start = DummyOperator(task_id='start')

	json_to_csv = PythonOperator(
				task_id='json_to_csv',
				provide_context=True,
				python_callable=_convert_json_to_csv
			)
	
	end = DummyOperator(task_id='end')

	start >> json_to_csv >> end

