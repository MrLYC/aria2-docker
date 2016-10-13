#!/bin/bash

nginx -t
/etc/init.d/nginx start
aria2c --conf-path=/etc/aria2.conf --rpc-user=${RPC_USER} --rpc-passwd=${RPC_PASSWD}
