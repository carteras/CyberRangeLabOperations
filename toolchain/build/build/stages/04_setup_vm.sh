#! /bin/bash

systemctl enable --now libvirtd.service
virsh net-autostart default

usermod -aG libvirt user
usermod -aG libvirt-qemu user