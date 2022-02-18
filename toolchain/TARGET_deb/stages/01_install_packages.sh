#! /bin/bash

# Setup mirror
echo "deb http://mirror.aarnet.edu.au/debian stable main non-free contrib" > /etc/apt/sources.list

# Update repository lists
apt update

# Install packages for basic admin and virtualization
DEBIAN_FRONTEND=noninteractive apt install --no-install-recommends -y netcat vim nano wpasupplicant dhcpcd5 qemu-system libvirt-clients libvirt-daemon-system virt-install 