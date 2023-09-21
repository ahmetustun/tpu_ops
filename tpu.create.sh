#!/bin/bash

TPU_NAME=$1
TPU_TYPE=$2
gcloud alpha compute tpus tpu-vm create ${TPU_NAME} --zone us-central2-b --accelerator-type ${TPU_TYPE} --version tpu-vm-v4-base
gcloud alpha compute tpus tpu-vm ssh ${TPU_NAME} --zone us-central2-b --worker=all --command "echo 'hello world'"
