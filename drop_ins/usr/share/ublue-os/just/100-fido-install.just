# vim: set ft=make :

# Update system, flatpaks, and containers all at once
fido2:
    #!/usr/bin/bash
    sudo systemd-cryptenroll --fido2-device=auto --fido2-with-user-verification=true /dev/nvme0n1p3
    sudo sed -i 's/discard/discard,fido2-device=auto/g' /etc/crypttab
    sudo cryptsetup config --key-slot 0 --priority ignore /dev/nvme0n1p3
    sudo cryptsetup config --key-slot 1 --priority prefer /dev/nvme0n1p3
    sudo rpm-ostree initramfs --enable --arg='--add' --arg='fido2'
