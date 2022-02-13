#!/bin/sh
setup-xorg-base
apk add bash bash-completion vim udev gnome gnome-apps-core firefox

# Add user
useradd -m -d /home/robert robert

# update sudoers
/bin/cat /etc/sudoers | grep -Fq 'robert' || echo 'robert ALL=(ALL) ALL' >> /etc/sudoers

rc-update add udev
