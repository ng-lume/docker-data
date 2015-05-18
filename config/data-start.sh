#!/usr/bin/env bash

if [ ! -f /data${API_PATH}/${API_DOTENV} ]; then
    echo "API .env file not found!"
    exit 1;
fi

cat /opt/etc/data-notice.txt /data${API_PATH}/${API_DOTENV} > /data${API_PATH}/.env


sed -i "s/%MAILCATCHER_PORT_1025_TCP_ADDR%/$MAILCATCHER_PORT_1025_TCP_ADDR/" /data${API_PATH}/.env

exit 0;