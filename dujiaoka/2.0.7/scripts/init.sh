#!/bin/bash

if [ -f .env ]; then
  source .env

  # setup-1 add default values
  CURRENT_DIR=$(pwd)
  sed -i '/^ENV_FILE=/d' .env
  echo "ENV_FILE=${CURRENT_DIR}/.env" >> .env

  if [ ! -f $DUJIAOKA_ROOT_PATH/install.lock ]; then
    touch $DUJIAOKA_ROOT_PATH/install.lock
  fi

  echo "Check Finish."

else
  echo "Error: .env file not found."
fi
