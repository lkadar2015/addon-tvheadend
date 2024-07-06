FROM ghcr.io/hassio-addons/ubuntu-base/amd64:10.0.1

RUN apt update
RUN apt install -y curl
RUN curl -1sLf 'https://dl.cloudsmith.io/public/tvheadend/tvheadend/setup.deb.sh' | bash
RUN apt update
RUN apt install -y tvheadend

COPY rootfs/ /

CMD [ "/bin/bash", "/root/start.sh" ]