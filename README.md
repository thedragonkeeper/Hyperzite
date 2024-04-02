# Hyperzite
This is an OCI image for the SteamDeck with some modifications.

Based on Bazzite-deck-gnome:latest which is based on fedora silverblue:39

To use this image install a base. Recommend to use https://github.com/ublue-os/bazzite + bazzite-deck-gnome
- After the install process is done rebase to this image with:

```rpm-ostree rebase ostree-unverified-registry:ghcr.io/thedragonkeeper/hyperzite:latest```

# Notable Changes:
- removed all the gnome stuff
- introduced swaywm
- added nwg components
- file browser:  ranger + thunar
- wvkbd as onscreenkb
- grimshot for screen grabs
- sway notification center for notifications

# Changes WIP to add:
currently this is just the base.. 
- Keybinds to control with gamepad
- New Steam Desktop config, so steam deck can control desktop
- add in the wip user configs
![alt text](https://github.com/TheDragonkeeper/Hyperzite/blob/main/DeckBG.png?raw=true)
