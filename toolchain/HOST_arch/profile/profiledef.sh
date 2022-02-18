#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="cros"
iso_label="CROS_$(date +%Y%m)"
iso_publisher="IT-CBRC <https://github.com/carteras/CyberRangeLabOperations>"
iso_application="Cyber Range OS"
iso_version="1.0.0"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
airootfs_image_tool_options=('-zlz4hc,12')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/build_debian.sh"]="0:0:755"
)
