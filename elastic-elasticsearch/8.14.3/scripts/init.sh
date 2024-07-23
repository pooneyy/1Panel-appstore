#!/bin/bash

if [ -f .env ]; then
  source .env

  # setup-1 add default values
  CURRENT_DIR=$(pwd)
  sed -i '/^ENV_FILE=/d' .env
  echo "ENV_FILE=${CURRENT_DIR}/.env" >> .env

  mkdir -p $ELASTICSEARCH_ROOT_PATH
  mkdir -p $ELASTICSEARCH_DATA_PATH/certs
  mkdir -p $ELASTICSEARCH_DATA_PATH/data
  mkdir -p $ELASTICSEARCH_DATA_PATH/logs
  mkdir -p $ELASTICSEARCH_DATA_PATH/plugins

  chown -R 1000:0 $ELASTICSEARCH_ROOT_PATH

  echo "Check Finish."

else
  echo "Error: .env file not found."
fi
