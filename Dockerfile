ARG BUILD_FROM=balena:raspbian

FROM $BUILD_FROM

ARG snapcast_version=0.25.0
ENV HOST snapserver

RUN  apt-get update \
  && apt-get install -y wget ca-certificates \
  && rm -rf /var/lib/apt/lists/*
RUN  wget https://github.com/badaix/snapcast/releases/download/v${snapcast_version}/snapclient_${snapcast_version}-1_armhf.deb
RUN  dpkg -i snapclient_${snapcast_version}-1_armhf.deb \
  ;  apt-get update \
  && apt-get -f install -y \
  && rm -rf /var/lib/apt/lists/*
RUN /usr/bin/snapclient -v
ENTRYPOINT ["/bin/bash","-c","/usr/bin/snapclient -h $HOST"]
