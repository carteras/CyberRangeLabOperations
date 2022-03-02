#! /bin/bash

systemctl enable --now libvirtd.service
virsh net-autostart default

usermod -aG user libvirt
usermod -aG user libvirt-qemu