#!/bin/bash
# filename: /root/eth0-script.sh
INTERFACE_NAME="eth0"

# Check if the interface is up
if networkctl status "$INTERFACE_NAME" | grep -q "State: routable"; then
    echo "Interface $INTERFACE_NAME is up!"
    /sbin/touch /root/is-up
else
    echo "Interface $INTERFACE_NAME is down."
        /sbin/touch /root/is-down
fi
