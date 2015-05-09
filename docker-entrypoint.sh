#!/bin/bash
set -e

if [ "$1" == '/opt/amc/bin/gunicorn' ]; then
        chown -R nobody /var/log/amc
	set -- gosu nobody "$@"
fi

exec "$@"
