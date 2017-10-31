#!/bin/sh

set -e

echo "Creating elastalert index..."

elastalert-create-index \
    --config ${ELASTALERT_CONFIG_DIR}/${ELASTALERT_CONFIG_FILE} \
    --index "${ELASTALERT_INDEX}" \
    --old-index "${ELASTALERT_OLD_INDEX}"

echo "Starting elastalert..."

elastalert --config=${ELASTALERT_CONFIG_DIR}/${ELASTALERT_CONFIG_FILE} --verbose
