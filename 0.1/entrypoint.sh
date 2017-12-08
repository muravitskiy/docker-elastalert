#!/bin/bash

set -e


if [ "${1:0:1}" = '-' ]; then
	set -- elastalert "$@"
	exec "$@"
fi

if [ "$1" = 'elastalert' ]; then

    set -- "$@" --config "${ELASTALERT_CONFIG}"
    echo "Creating elastalert index..."

    elastalert-create-index \
        --config "${ELASTALERT_CONFIG}"

    echo "Starting elastalert..."

    exec "$@"
fi

exec "$@"
