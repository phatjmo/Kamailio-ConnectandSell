#!/bin/bash
# This script installs custom configs and scripts for ConnectandSell Kamailio/RTPEngine proxies...

echo "This script will copy ConnectandSell kamailio and rtpengine configs and scripts to their proper destinations..."

echo "Copying Kamailio files..."
cp kamailio/kamailio.init /etc/init.d/kamailio
cp kamailio/server.def /usr/local/etc/kamailio/
cp kamailio/kamailio.cfg /usr/local/etc/kamailio/
cp kamailio/kamctlrc /usr/local/etc/kamailio/
chmod 777 /etc/init.d/kamailio

echo "Copying RTPEngine files..."
cp rtpengine/rtpengine.init /etc/init.d/rtpengine
cp rtpengine/rtpengine.cfg /etc/sysconfig/rtpengine
chmod 777 /etc/init.d/rtpengine
chmod 777 /etc/sysconfig/rtpengine

echo "Done!"
