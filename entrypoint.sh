#!/bin/bash
/usr/bin/dnf -y upgrade clamd clamav-update
/usr/bin/freshclam
#/bin/bash /usr/bin/updateloop.sh   &    
#/usr/sbin/clamd -F -c /etc/clamd/scan.conf
/usr/bin/entrypoint.py
