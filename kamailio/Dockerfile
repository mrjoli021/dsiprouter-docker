FROM kamailio/kamailio:5.3.8-stretch

COPY configs /etc/kamailio
COPY modules /usr/lib/x86_64-linux-gnu/kamailio/modules

ENTRYPOINT ["kamailio","-DD","-E"]
