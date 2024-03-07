FROM ghcr.io/ublue-os/bazzite-deck-gnome:latest as Hyprzite

RUN rpm-ostree install cowsay

RUN rm -rf /tmp/* /var/* && \
  ostree container commit
