#!/bin/bash -v

# Set environment variables
export SPLUNK_HOST_NAME=`curl http://169.254.169.254/latest/meta-data/instance-id`
export SPLUNK_HOME=/opt/splunk

# Configure Splunk inputs.conf
echo [default] > $SPLUNK_HOME/etc/system/local/inputs.conf
echo host=$SPLUNK_HOST_NAME >> $SPLUNK_HOME/etc/system/local/inputs.conf
echo [tcp://:514] >> $SPLUNK_HOME/etc/system/local/inputs.conf
echo connection_host = dns >> $SPLUNK_HOME/etc/system/local/inputs.conf
echo sourcetype = syslog >> $SPLUNK_HOME/etc/system/local/inputs.conf
echo source = tcp:514 >> $SPLUNK_HOME/etc/system/local/inputs.conf
chown splunk.splunk $SPLUNK_HOME/etc/system/local/inputs.conf
