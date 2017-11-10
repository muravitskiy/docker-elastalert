#!/bin/bash

set -e


if [ "${1:0:1}" = '-' ]; then
	set -- elastalert --verbose "$@"
fi

if [ "$1" = 'elastalert' ]; then

    echo "Creating elastalert index..."

    elastalert-create-index \
        --index "${ELASTALERT_INDEX}" \
        --old-index "${ELASTALERT_OLD_INDEX}"

    echo "Starting elastalert..."

    exec "$@"
fi

exec "$@"
