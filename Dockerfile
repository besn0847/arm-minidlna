FROM hypriot/rpi-alpine-scratch

RUN echo "http://nl.alpinelinux.org/alpine/v3.3/main" > /etc/apk/repositories &&\
	apk update && \
	apk add minidlna &&\
	mkdir /data && mkdir /data/media /data/db 

ADD ./config/ /config/

EXPOSE 8200 1900/udp

ENTRYPOINT /usr/sbin/minidlnad -R -S -f /config/minidlna.conf 
