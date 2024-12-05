#!/bin/sh

# pulled from git(hub) and executed from /etc/rc.local on custom ISO

printf "Install basic tools? "
read -r Q
if [ "$Q" = y ] ; then
        pkg install -y security/openssh-askpass textproc/bat sysutils/ccze textproc/colordiff security/doas sysutils/exa sysutils/freecolor sysutils/fusefs-exfat sysutils/fusefs-sshfs devel/git-extras devel/git-lfs devel/gitflow net/gitup sysutils/htop net-mgmt/iftop net-mgmt/ipcalc japanese/w3m textproc/jq security/keychain misc/mc mail/mutt sysutils/ncdu ftp/ncftp3 security/nmap lang/python lang/python3 sysutils/tmate sysutils/tmux sysutils/tree editors/vim net/wireguard-tools sysutils/zfstools shells/zsh
else
        exit 0
fi

printf "Install desktop? "
read -r Q
if [ "$Q" = y ] ; then
        pkg install -y x11/arandr sysutils/bsdinfo x11/cool-retro-term graphics/drm-kmod mail/evolution graphics/feh www/firefox graphics/geeqie graphics/gimp security/gnome-keyring deskutils/gucharmap textproc/hs-pandoc x11-wm/i3 x11/i3blocks x11/i3lock-color deskutils/i3status security/pam_ssh_agent_auth sysutils/pam_xdg security/pam_yubico audio/pavucontrol audio/pavucontrol-qt x11-wm/picom net/py-magic-wormhole x11/rofi x11/rofi-file-browser-extended graphics/scrot x11-themes/slim-freebsd-black-theme x11/trayer x11/xautolock x11/xbanish x11/xbindkeys devel/xdg-user-dirs devel/xdg-utils x11/xorg
else
        exit 0
fi

# sterm-jas and pragmatapro

echo "Enable new services: "
ls /usr/local/etc/rc.d/

echo
echo "Modify configs: "
ls /usr/local/etc/

