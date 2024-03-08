
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
    nano \
    xdg-desktop-portal-gtk \
    xdg-desktop-portal-hyprland \
    hyprland-protocols-devel \
    nwg-panel \
    nwg-wrapper

RUN systemctl enable sshd

RUN rm -rf /usr/bin/gnome-session-oneshot

COPY drop_ins/usr/bin/gnome-session-oneshot /usr/bin/gnome-session-oneshot
