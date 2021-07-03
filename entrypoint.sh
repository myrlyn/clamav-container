#!/bin/bash
/usr/bin/updateloop.sh &
/usr/bin/freshclam
/usr/sbin/clamd -F -c /etc/clamd/scan.conf 

