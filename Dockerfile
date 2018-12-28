FROM python:2.7-onbuild

MAINTAINER Thierry Valero (IRD/MIVEGEC)

RUN apt-get update && apt-get install -y \
    imagemagick \
    ghostscript && \
    apt-get clean && rm -rf /var/lib/apt/lists/*    

ENV SPECIFY_KEY  None
ENV SPECIFY_HOST localhost

ENV SPECIFY_PORT 8080
EXPOSE 8080

ENV BASE_DIR /home/specify/attachments/
RUN mkdir -p /home/specify/attachments
VOLUME       /home/specify/attachments

LABEL ird.mivegec.name='tvalero/web-asset-server'


ENV CONTAINER_RELEASE DEV-20170517d

LABEL org.label-schema.schema-version "1.0"

LABEL description         'Specify Web Asset Server in a container'
LABEL docker.cmd          'docker run -it -d quay.io/mivegec/specify-web-asset-server:latest -v ./data/attachments:/home/specify/attachments:rw'
LABEL version             ${CONTAINER_RELEASE}
LABEL vendor              MIVEGEC
LABEL url                 http://www.vectobol.net/
LABEL vcs-type            git
LABEL vcs-url             git@github.com:tvalero/web-asset-server.git
LABEL vcs-ref             ${CONTAINER_RELEASE}
LABEL distribution-scope  public

ENTRYPOINT python server.py
