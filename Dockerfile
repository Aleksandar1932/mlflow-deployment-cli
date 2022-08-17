FROM python:3.8-slim-buster

ENV DEFAULT_ARTIFACT_ROOT=./mlruns BACKEND_STORE_URI=./mlruns

WORKDIR /app

RUN pip3 install mlflow 

# replace with conditional support
RUN pip3 install psycopg2-binary azure-identity azure-storage-blob

CMD mlflow server --host=0.0.0.0 --port=9000 --backend-store-uri=${BACKEND_STORE_URI} --default-artifact-root=${DEFAULT_ARTIFACT_ROOT}