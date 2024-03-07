FROM ghcr.io/ublue-os/bazzite-deck-gnome:latest AS hyprzite

RUN rpm-ostree install cowsay

RUN rm -rf /tmp/* /var/* && \
  ostree container commit
