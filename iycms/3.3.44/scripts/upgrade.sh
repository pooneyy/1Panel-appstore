#!/bin/bash

if [ -f .env ]; then
  source .env

  # setup-1 add default values
  CURRENT_DIR=$(pwd)
  sed -i '/^ENV_FILE=/d' .env
  echo "ENV_FILE=${CURRENT_DIR}/.env" >> .env

  if [ ! -d "$IYCMS_ROOT_PATH/config" ]; then
    mkdir -p "$IYCMS_ROOT_PATH/config"
  fi

  if [ -d "$IYCMS_ROOT_PATH/config/config.conf" ]; then
    rm -r "$IYCMS_ROOT_PATH/config/config.conf"
    touch "$IYCMS_ROOT_PATH/config/config.conf"
  elif [ ! -f "$IYCMS_ROOT_PATH/config/config.conf" ]; then
    cp ./config/config.conf "$IYCMS_ROOT_PATH/config/config.conf"
  else
    echo "config.conf cp error."
  fi

  echo "Check Finish."

else
  echo "Error: .env file not found."
fi
