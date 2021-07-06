#!/bin/bash
/usr/bin/dnf -y upgrade clamd clamav-update
/usr/bin/updateloop.sh &
/usr/bin/freshclam
/usr/sbin/clamd -F -c /etc/clamd/scan.conf | grep -i 'Client disconnected'

