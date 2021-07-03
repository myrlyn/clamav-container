#!/bin/bash
echo starting updateloop
while :
do
sleep 28800
echo starting freshclam
/usr/bin/freshclam
echo reloading virus definitions
/usr/bin/kill-s SIGUSR2 `cat /run/clamd.scan/clamd.pid`
done
