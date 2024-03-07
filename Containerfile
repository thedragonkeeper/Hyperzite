FROM ghcr.io/ublue-os/bazzite-deck-gnome:latest AS hyprzite

RUN rpm-ostree override remove \
    gnome-menus \
    pinentry-gnome3 \
    gnome-remote-desktop \
    fedora-chromium-config-gnome \
    f39-backgrounds-gnome \
    gnome-desktop4 \
    gnome-settings-daemon \
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
    gnome-shell-extension-caribou-blocker \
    nautilus \
    mutter \
    gdm \
    libgdata \
    nautilus-gsconnect \
    xapps \
    gvfs-goa \
    webapp-manager \
    python3-xapps-overrides \
    evolution-data-server \
    evolution-data-server-langpacks
    

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
    xdg-desktop-portal-hyprland


RUN rm -rf \
    /usr/etc/dconf/db/local.d/02-bazzite-global \
    /usr/etc/dconf/db/local.d/03-bazzite-dash \
    /usr/etc/dconf/db/local.d/04-bazzite-folders \
    /usr/etc/dconf/db/local.d/06-bazzite-theme \
    /usr/etc/dconf/db/local.d/05-bazzite-extensions \
    /usr/etc/dconf/db/local.d/07-bazzite-deck \
    /usr/share/xsessions/gnome-xorg-oneshot.desktop \
    /usr/share/wayland-sessions/gnome-wayland-oneshot.desktop \
    /usr/bin/gnome-session-oneshot \
    /usr/bin/gnome-help \
    /usr/bin/return-to-gamemode \
    /usr/bin/steamos-session-select \
    /usr/etc/environment \
    /usr/etc/bazzite/initramfs/args.d/00-example.conf \
    /usr/bin/bazzite-steam \
    /usr/libexec/bazzite-autologin

RUN systemctl enable sshd
COPY drop_ins/* /
RUN chmod +x /usr/bin/bazzite-steam ;\
    chmod +x /usr/libexec/bazzite-autologin ;\
    chmod +x /usr/bin/return-to-gamemode ;\
    chmod +x /usr/bin/steamos-session-select ;\
    chmod +x /usr/bin/Hyprland-oneshot

RUN rm -rf /tmp/* /var/* && \
  ostree container commit
