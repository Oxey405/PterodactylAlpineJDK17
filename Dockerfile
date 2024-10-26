FROM alpine/java:17

LABEL author="Oxey405" maintainer="hello@oxey405.com"

RUN adduser -S container -h /home/container

USER container
ENV USER=container HOME=/home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD [ "/bin/sh", "/entrypoint.sh" ]