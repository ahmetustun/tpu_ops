#!/usr/bin/env bash

#TPU_NAME=$1
gcloud alpha compute tpus tpu-vm stop ${TPU_NAME} --zone=us-central2-b --project ${GCP_PROJECT_ID}
