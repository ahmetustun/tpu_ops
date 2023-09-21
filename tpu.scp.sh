#!/usr/bin/env bash 

#TPU_NAME=$1
SRC_FILE=$1
TGT_FILE=$2

gcloud alpha compute tpus tpu-vm scp --recurse ${SRC_FILE} ${TPU_NAME}:${TGT_FILE} \
  --zone us-central2-b \
  --worker=all 
