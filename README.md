# mlflow-deployment

CLI for deployment od MLFlow with support for backend and artifact stores.

Deploy MLFlow with support for PostgreSQL, Azure Blobs, Amazon S3 and Google Cloud Platform with ease.

# Usage

`python -m mlflow_deploy_cli --artifact-store '<desired_store>'` _can be [`azure`](https://www.mlflow.org/docs/latest/tracking.html#azure-blob-storage), [`s3`](https://www.mlflow.org/docs/latest/tracking.html#id82), [`gcp`](https://www.mlflow.org/docs/latest/tracking.html#id84) or `local`_

`cd build`

`docker build . -t mlflow`

`docker-compose up -f docker-compose.yml up`