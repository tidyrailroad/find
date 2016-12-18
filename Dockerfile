FROM alpine:3.4
MAINTAINER Emory Merryman emory.merryman@gmail.com
COPY run.sh entrypoint.sh /opt/docker/
RUN \
    apk update && \
    apk upgrade && \
    apk add findutils && \
    true
ENTRYPOINT ["/usr/bin/find"]
CMD []