#!/bin/bash

if [ -f .env ]; then
  source .env

  # setup-1 add default values
  CURRENT_DIR=$(pwd)
  sed -i '/^ENV_FILE=/d' .env
  echo "ENV_FILE=${CURRENT_DIR}/.env" >> .env

  # setup-2 generate key
  mkdir -p "${CURRENT_DIR}/data"
  docker run -it --rm \
        --mount type=bind,src="${CURRENT_DIR}/data",dst=/data \
        -e SYNAPSE_SERVER_NAME="$DOMAIN_NAME" \
        -e SYNAPSE_REPORT_STATS=no \
        matrixdotorg/synapse:latest generate

  # setup-3 check permission
  chmod -R 777 "${CURRENT_DIR}/data"

  echo "Check Finish."

else
  echo "Error: .env file not found."
fi
