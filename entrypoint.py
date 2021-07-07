#!/usr/bin/python
import subprocess as sp
sp.Popen('/usr/bin/updateloop.sh')
sp.call("/usr/sbin/clamd -F -c /etc/clamd/scan.conf",shell=True)

