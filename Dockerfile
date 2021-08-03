FROM ubuntu:21.04
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:qbittorrent-team/qbittorrent-stable && \
    apt-get install -y qbittorrent-nox && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 8080
CMD ["qbittorrent-nox"]