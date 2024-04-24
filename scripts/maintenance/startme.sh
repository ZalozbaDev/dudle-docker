#!/bin/bash

echo $DUDLE_APP_CONTAINER_NAME > /container_name.txt

/usr/sbin/cron -f
