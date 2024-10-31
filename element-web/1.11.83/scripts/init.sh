#!/bin/bash

if [ -f .env ]; then
  source .env

  # setup-1 add default values
  CURRENT_DIR=$(pwd)
  sed -i '/^ENV_FILE=/d' .env
  echo "ENV_FILE=${CURRENT_DIR}/.env" >> .env

  # setup-2 copy config file
  mkdir -p "$ELEMENT_WEB_ROOT_PATH"
  mkdir -p "$ELEMENT_WEB_ROOT_PATH/config"
  cp ./conf/config.sample.json "$ELEMENT_WEB_ROOT_PATH/config/config.json"

  # setup-3 set permission
  chmod -R 777 "$ELEMENT_WEB_ROOT_PATH"

  echo "Check Finish."

else
  echo "Error: .env file not found."
fi
