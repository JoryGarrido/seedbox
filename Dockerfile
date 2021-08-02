FROM ubuntu:impish
RUN sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable \
&& sudo apt-get update \
&& sudo apt-get install qbittorrent-nox
EXPOSE 8080
CMD ["qbitorrent-nox"]
