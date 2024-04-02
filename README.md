# Hyperzite
This is an OCI image for the SteamDeck with some modifications.

Based on Bazzite-deck-gnome:latest

which is based on fedora silverblue:39

To use this image install bazzite-deck-gnome and rebase
```
rpm-ostree rebase ostree-unverified-registry:ghcr.io/thedragonkeeper/hyperzite:latest
