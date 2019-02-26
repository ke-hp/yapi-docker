#!/bin/sh

sed "s/ADMIN_ACCOUNT/${ADMIN_ACCOUNT}/;s/DB_SERVER_NAME/${DB_SERVER_NAME}/;s/DB_DATABASE/${DB_DATABASE}/;s/DB_PORT/${DB_PORT}/;s/DB_USER/${DB_USER}/;s/DB_PASS/${DB_PASS}/"  config_example.json > ../config.json

exec "$@"