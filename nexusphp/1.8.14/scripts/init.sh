#!/bin/bash

if [ -f .env ]; then
  source .env

  # setup-1 add default values
  CURRENT_DIR=$(pwd)
  sed -i '/^ENV_FILE=/d' .env
  echo "ENV_FILE=${CURRENT_DIR}/.env" >> .env

  # setup-2 download geoip2
  GEOIP_DIR="$NEXUSPHP_ROOT_PATH/geoip2"
  mkdir -p "$GEOIP_DIR"

  GEOIP_FILE="$GEOIP_DIR/geoip2.mmdb"
  if curl -o "$GEOIP_FILE" -L "https://cdn.jsdelivr.net/gh/Hackl0us/GeoIP2-CN@release/Country.mmdb"; then
    echo "GeoIP2 database downloaded successfully to $GEOIP_FILE"
  else
    echo "Error: Failed to download GeoIP2 database."
  fi

  echo "Check Finish."

else
  echo "Error: .env file not found."
fi
