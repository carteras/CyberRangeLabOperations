FROM archlinux:base-devel

# Install required packages
RUN pacman -Syy --noconfirm arch-install-scripts git awk dosfstools e2fsprogs erofs-utils findutils gzip libarchive libisoburn mtools openssl sed squashfs-tools xorriso

WORKDIR /root
# Add install scripts, config files etc.
ADD ./HOST_arch /root
RUN mkdir /root/wdir && mkdir /root/odir

CMD ["./mkarchiso", "-v", "-w", "/root/wdir", "-o", "/root/odir", "/root/profile"]