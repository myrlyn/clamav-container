#!/bin/bash
/usr/bin/dnf -y upgrade clamd clamav-update
/usr/bin/freshclam
/usr/bin/entrypoint.py
