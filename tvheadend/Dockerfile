FROM ghcr.io/hassio-addons/ubuntu-base/amd64:10.0.1

RUN apt update
RUN apt install -y curl
RUN curl -1sLf 'https://dl.cloudsmith.io/public/tvheadend/tvheadend/setup.deb.sh' | bash
RUN apt update
RUN apt install -y tvheadend
#RUN apt install -y git binutils pngquant imagemagick librsvg2-bin jq bsdmainutils
#RUN git clone https://github.com/picons/picons.git /root/picons

#WORKDIR /root/picons

#RUN bash ./1-build-servicelist.sh snp
#RUN bash ./1-build-servicelist.sh srp
#RUN bash ./2-build-picons.sh snp-full
#RUN bash ./2-build-picons.sh srp-full

#RUN cp ./build-output /usr/share/picons
#RUN rm -r /root/picons

COPY rootfs/ /
RUN chmod +x /usr/bin/restart_addon
RUN chmod +x /usr/bin/tvh-postprocess

# Labels
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Maximilian Kenfenheuer <maximilian.kenfenheuer@ksol.it>" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="Maximilian Kenfenheuer" \
    org.opencontainers.image.authors="Maximilian Kenfenheuer <maximilian.kenfenheuer@ksol.it>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://github.com/mkenfenheuer/addon-tvheadend" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}