#!/bin/bash

while true
do
    if systemctl is-active --quiet cag.service
    then
        echo "cag service is active"
    else
        echo "cag service is inactive, restarting..."
        systemctl restart cag.service
    fi
    sleep 120
done