FROM ghcr.io/ublue-os/bazzite-deck-gnome:latest AS hyprzite

RUN rpm-ostree install fuzzel \
    kitty \
    hyprland \
    fontawesome-fonts-all \
    ranger \
    ncdu \
    python3-beautifulsoup4 \
    scanmem \
    screen \
    dunst \
    nano
RUN systemctl enable sshd
COPY drop_ins/* /

rpm-ostree initramfs --enable --arg='--add' --arg='fido2'
rpm-ostree initramfs-etc --force-sync

RUN rm -rf /tmp/* /var/* && \
  ostree container commit
