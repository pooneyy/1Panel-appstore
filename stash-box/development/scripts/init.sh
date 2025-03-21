#!/bin/bash

if [ -f .env ]; then
  source .env

  # setup-1 add default values
  CURRENT_DIR=$(pwd)
  sed -i '/^ENV_FILE=/d' .env
  sed -i '/^GLOBAL_ENV_FILE=/d' .env
  echo "ENV_FILE=${CURRENT_DIR}/.env" >> .env
  echo "GLOBAL_ENV_FILE=${CURRENT_DIR}/envs/global.env" >> .env

  # setup-2 create stash-box-config.yml
  mkdir -p "$STASH_BOX_ROOT_PATH"
  mkdir -p "$STASH_BOX_ROOT_PATH/data"
  if [ ! -f "$STASH_BOX_ROOT_PATH/data/stash-box-config.yml" ]; then
    echo "database: ${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_NAME}" > "$STASH_BOX_ROOT_PATH/data/stash-box-config.yml"
  fi

  echo "Check Finish."

else
  echo "Error: .env file not found."
fi
