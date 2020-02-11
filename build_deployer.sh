#!/bin/bash

source versions.sh.inc

export REGISTRY=gcr.io/$GCP_PROJECT
export APP_NAME=weaviate-on-gke
docker build \
  --tag "$TARGET_REPO_BASE/deployer" \
  --tag "$TARGET_REPO_BASE/deployer:$TARGET_VERSION" \
  .
docker push "$TARGET_REPO_BASE/deployer"
