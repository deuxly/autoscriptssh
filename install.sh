#!/bin/bash
# teknoit #
# deuxly #

## install sslh #
wget https://raw.githubusercontent.com/deuxly/autoscriptssh/main/sslh/sslh.sh && chmod +x sslh.sh && ./sslh.sh
sleep 1

## install stunnel5 ##
wget https://raw.githubusercontent.com/deuxly/autoscriptssh/main/stunnel5/stunnel5.sh && chmod +x stunnel5.sh && ./stunnel5.sh
sleep 1

## install ssh websocket ##
wget https://raw.githubusercontent.com/deuxly/autoscriptssh/main/websocket/ws-only.sh && chmod +x ws-only.sh && ./ws-only.sh
sleep 1
