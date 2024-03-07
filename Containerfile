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

RUN rpm-ostree override remove \
    gnome-menus \
    pinentry-gnome3 \
    gnome-remote-desktop \
    fedora-chromium-config-gnome \
    f39-backgrounds-gnome \
    gnome-desktop3 \
    gnome-desktop4 \
    gnome-settings \
    gnome-session \
    xdg-desktop-portal-gnome \
    gnome-bluetooth-libs \
    gnome-bluetooth \
    gnome-keyring \
    gnome-autoar \
    gnome-online-accounts \
    gnome-software \
    gnome-keyring-pam \
    gnome-color-manager \
    gnome-session-wayland-session \
    gnome-session-xsession \
    gnome-shell-extension-common \
    gnome-shell-extension-apps-menu \
    gnome-shell-extension-launch-new-instance \
    gnome-shell-extension-places-menu \
    gnome-shell-extension-window-list \
    gnome-terminal \
    gnome-browser-connector \
    gnome-shell-extension-background-logo \
    NetworkManager-ssh-gnome \
    NetworkManager-openconnect-gnome \
    gnome-system-monitor \
    NetworkManager-vpnc-gnome \
    NetworkManager-openvpn-gnome \
    NetworkManager-pptp-gnome \
    gnome-disk-utility \
    desktop-backgrounds-gnome \
    gnome-user-share \
    gnome-backgrounds \
    fros-gnome \
    gnome-user-docs \
    gnome-epub-thumbnailer \
    gnome-tweaks \
    libgnomekbd \
    gnome-shell-extension-appindicator \
    gnome-control-center-filesystem \
    gnome-control-center \
    gnome-shell \
    gnome-shell-extension-gsconnect \
    gnome-shell-extension-hanabi \
    gnome-shell-extension-gamerzilla \
    gnome-shell-extension-blur-my-shell \
    gnome-shell-extension-just-perfection \
    gnome-shell-extension-hotedge \
    gnome-shell-extension-compiz-windows-effect \
    gnome-shell-extension-bazzite-menu \
    gnome-randr-rust \
    gnome-shell-extension-system76-scheduler \
    gnome-shell-extension-user-theme \
    steamdeck-gnome-presets \
    gnome-shell-extension-caribou-blocker


RUN rpm-ostree install xdg-desktop-portal-hyprland

RUN rm -rf /tmp/* /var/* && \
  ostree container commit
