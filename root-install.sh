#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

if [ -f /etc/os-release ]; then
    # freedesktop.org and systemd
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
elif type lsb_release >/dev/null 2>&1; then
    # linuxbase.org
    OS=$(lsb_release -si)
    VER=$(lsb_release -sr)
elif [ -f /etc/lsb-release ]; then
    # For some versions of Debian/Ubuntu without lsb_release command
    . /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
elif [ -f /etc/debian_version ]; then
    # Older Debian/Ubuntu/etc.
    OS=Debian
    VER=$(cat /etc/debian_version)
elif [ -f /etc/SuSe-release ]; then
    # Older SuSE/etc.
    ...
elif [ -f /etc/redhat-release ]; then
    # Older Red Hat, CentOS, etc.
    ...
else
    # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
    OS=$(uname -s)
    VER=$(uname -r)
fi
echo "Detected Distro ${OS}"

# https://gist.github.com/natefoo/814c5bf936922dad97ff
if [[ $OS == *"Ubuntu"* ]]; then
    add-apt-repository ppa:neovim-ppa/stable
    apt install neovim fonts-powerline zsh tmux
elif [[ $OS == *"Manjaro"* ]] || [[ $OS == *"Arch"* ]]; then
    # install arch/manjaro
    pacman -Sy xorg-server i3-gaps zsh alacritty tmux neovim ranger i3-block i3lock compton feh xautolock powerline-fonts fzf
else
    echo "Invalid Distro, install the programs yourself."
    exit 1
fi

# youtube-dl
wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
chmod a+rx /usr/local/bin/youtube-dl
