from fedora:34
RUN /usr/bin/dnf -y install clamd clamav-data clamav-update clamav-unofficial-sigs psmisc && mkdir /etc/clamd/
EXPOSE 3310/tcp
ADD entrypoint.sh  /usr/bin/
ADD updateloop.sh /usr/bin/
ADD scan.conf /etc/clamd/
#ENTRYPOINT /bin/bash /usr/bin/entrypoint.sh
CMD [ "/bin/bash", "/usr/bin/entrypoint.sh" ]
