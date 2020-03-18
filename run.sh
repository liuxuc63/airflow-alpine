export AIRFLOW_HOME=/airflow
# start webserver
nohup airflow webserver -p 8080 &
# start schduler
nohup airflow scheduler &
