ARG BUILD_FROM=balena:raspbian

FROM $BUILD_FROM

ENV HOST snapserver
ENV ID clientid

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    ca-certificates \
    curl \
    jq && \
    rm -rf /var/lib/apt/lists/*
RUN DOWNLOAD_URL=$(curl -s https://api.github.com/repos/badaix/snapcast/releases/latest | jq -r '.assets[] | .browser_download_url' | grep snapclient.*1_armhf.deb) && \
    curl -L --output snapclient.deb $DOWNLOAD_URL
RUN apt-get update && \
    apt-get install ./snapclient.deb && \
    rm -rf snapclient.deb /var/lib/apt/lists/*
RUN /usr/bin/snapclient -v

ENV TZ=Europe/Berlin

ENTRYPOINT /usr/bin/snapclient -h $HOST --hostID $ID
