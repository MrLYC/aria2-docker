#!/bin/bash

function cleaner() {
    while true; do
        sleep 60
        find /site/download/ -mmin +${FILE_EXPIRES} -type f -exec rm -f {} \;
    done
}

nginx -t
/etc/init.d/nginx start
cleaner &
aria2c --conf-path=/etc/aria2.conf --rpc-user=${RPC_USER} --rpc-passwd=${RPC_PASSWD}
