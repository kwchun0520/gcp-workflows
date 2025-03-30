#!/usr/bin/env bash
set -x
SERVICE_ACCOUNT=$1
gcloud workflows deploy workflow-galaxy \
    --location=us-central1 \
    --source=./src/gcp_workflows/workflow-galaxy.yaml \
    --service-account=$SERVICE_ACCOUNT