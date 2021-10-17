FROM alpine:latest
#RUN apk add --no-cache dpkg
#COPY kerio-connect-9.3.1-5492-p1-linux-amd64.deb kerio-connect-9.3.1-5492-p1-linux-amd64.deb
#RUN dpkg -i kerio-connect-9.3.1-5492-p1-linux-amd64.deb
RUN apk add --no-cache sysstat
RUN apk add --no-cache cryptsetup
RUN apk add --no-cache rpm
COPY kerio-connect-9.3.1-5492-p1-linux-x86_64.rpm kerio-connect-9.3.1-5492-p1-linux-x86_64.rpm
RUN rpm -U kerio-connect-9.3.1-5492-p1-linux-x86_64.rpm