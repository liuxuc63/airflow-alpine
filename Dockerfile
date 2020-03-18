# airflow python
FROM  python:3.7-alpine

VOLUME ["/airflow"]
WORKDIR /app
ADD ./run.sh /app
# ENV AIRFLOW_HOME=value
RUN export AIRFLOW_HOME=/airflow
RUN pip install apache-airflow
RUN airflow initdb

EXPOSE 8080

ENTRYPOINT ["run.sh"]
