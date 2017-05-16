FROM python:2.7-alpine

MAINTAINER Thierry Valero (IRD/MIVEGEC)


LABEL ird.mivegec.name='tvalero/web-asset-server'
LABEL ird.mivegec.description='Specify Web Asset Server in a container'
LABEL ird.mivegec.torun='docker run -it -d quay.io/mivegec/specify-web-asset-server:master -v <Your data volume>:/home/specify/attachments:rw'

#RUN apt-get update && apt-get install -y \
#    imagemagick \
#    ghostscript

RUN apk update && \
    apk add    imagemagick ghostscript

ENV SPECIFY_KEY  None
ENV SPECIFY_HOST localhost

ENV SPECIFY_PORT 8080
EXPOSE 8080

ENV BASE_DIR /home/specify/attachments/
RUN mkdir -p /home/specify/attachments
VOLUME       /home/specify/attachments

ENV CONTAINER_RELEASE dev

ENTRYPOINT python server.py
