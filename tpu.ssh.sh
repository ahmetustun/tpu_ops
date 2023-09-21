#!/usr/bin/env bash 

#TPU_NAME=$1

gcloud alpha compute tpus tpu-vm ssh ${TPU_NAME} \
  --zone us-central2-b \
  --worker=${1:-0}
