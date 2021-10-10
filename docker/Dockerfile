FROM alpine:3.14
RUN apk update
RUN apk add nfs-utils openrc
COPY exports /etc/
COPY nfsd.sh /usr/bin/nfsd.sh
RUN chmod +x /usr/bin/nfsd.sh
ENTRYPOINT ["/usr/bin/nfsd.sh"]
