#! /bin/bash

# Setup mirror
echo "deb http://mirror.aarnet.edu.au/debian stable main non-free contrib" > /etc/apt/sources.list

# Update repository lists
apt update

# Install packages for basic admin and virtualization
DEBIAN_FRONTEND=noninteractive apt install --no-install-recommends -y dnsmasq firefox-esr spice-client-gtk netcat nmap vim nano wpasupplicant dhcpcd5 qemu-system libvirt-clients libvirt-daemon-system libvirt-daemon lightdm-gtk-greeter lightdm task-xfce-desktop gnome-terminal qemu-kvm libvirt-clients virtinst bridge-utils virt-manager
echo "Installed packages!"