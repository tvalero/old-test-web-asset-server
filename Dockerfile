FROM python:2.7

MAINTAINER Thierry Valero (IRD/MIVEGEC)

RUN apt-get update            && \
    apt-get install -y           \
      imagemagick                \
      ghostscript             && \
    apt-get clean             && \
    rm -rf /var/lib/apt/lists/*    

RUN mkdir -p                            /usr/src/app
WORKDIR                                 /usr/src/app
COPY ./usr-src-app/requirements.txt     /usr/src/app/
RUN pip install -r requirements.txt
COPY ./usr-src-app                      /usr/src/app

ENV SPECIFY_KEY  None
ENV SPECIFY_HOST localhost

ENV SPECIFY_PORT 8080
EXPOSE 8080

ENV BASE_DIR /home/specify/attachments/
RUN mkdir -p /home/specify/attachments
#VOLUME       /home/specify/attachments




ENV SPECIFY_VERSION       r002-20181228

LABEL org.label-schema.schema-version "1.0"
# Voir http://label-schema.org/rc1/

LABEL name                'Specify-Web-Asset-Server'
LABEL description         'Specify Web Asset Server in a container'
LABEL docker.cmd          'docker run -it -d quay.io/mivegec/specify-web-asset-server:latest -v ./data/attachments:/home/specify/attachments:rw'
LABEL version             ${SPECIFY_VERSION}
LABEL vendor              MIVEGEC
LABEL url                 http://www.vectobol.net/
LABEL vcs-type            git
LABEL vcs-url             git@github.com:tvalero/web-asset-server.git
LABEL vcs-ref             ${SPECIFY_VERSION}
LABEL distribution-scope  public

ENTRYPOINT python server.py
