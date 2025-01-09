#!/bin/bash

if [ -f .env ]; then
  source .env

  # setup-1 add default values
  CURRENT_DIR=$(pwd)
  sed -i '/^ENV_FILE=/d' .env
  sed -i '/^GLOBAL_ENV_FILE=/d' .env
  echo "ENV_FILE=${CURRENT_DIR}/.env" >> .env
  echo "GLOBAL_ENV_FILE=${CURRENT_DIR}/envs/global.env" >> .env

  # setup-2 update dir permissions
  mkdir -p "$NODEBB_ROOT_PATH"
  mkdir -p "$NODEBB_ROOT_PATH/build"
  mkdir -p "$NODEBB_ROOT_PATH/uploads"
  mkdir -p "$NODEBB_ROOT_PATH/config"

  chmod -R 1001:1001 "$NODEBB_ROOT_PATH"
  chmod -R 644 "$NODEBB_ROOT_PATH"
  chmod -R 1001:1001 "$NODEBB_ROOT_PATH/build"
  chmod -R 644 "$NODEBB_ROOT_PATH/build"
  chmod -R 1001:1001 "$NODEBB_ROOT_PATH/uploads"
  chmod -R 644 "$NODEBB_ROOT_PATH/uploads"
  chmod -R 1001:1001 "$NODEBB_ROOT_PATH/config"
  chmod -R 644 "$NODEBB_ROOT_PATH/config"

  echo "Check Finish."

else
  echo "Error: .env file not found."
fi
