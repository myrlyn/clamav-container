from fedora:34
RUN /usr/bin/dnf -y install clamd clamav-data clamav-update clamav-unofficial-sigs psmisc nmap-ncat bash python && mkdir /etc/clamd
RUN /usr/bin/freshclam
EXPOSE 3310/tcp
ADD updateloop.sh /usr/bin/
ADD scan.conf /etc/clamd/
ADD healthcheck.sh /usr/bin
ADD entrypoint.sh  /usr/bin/
ADD entrypoint.py /usr/bin
CMD [ "/bin/bash", "/usr/bin/entrypoint.sh" ]
