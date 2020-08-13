#!/bin/sh

mlflow server \
    --file-store $MLFLOW_FILE \
    --default-artifact-root $MLFLOW_ARTIFACT \
    --host $MLFLOW_HOST \
    --port $MLFLOW_PORT
