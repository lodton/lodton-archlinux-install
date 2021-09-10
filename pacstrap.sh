pacman -Syy
pacstrap -i /mnt base base-devel linux linux-firmware vim nano dhcpcd networkmanager iwd 
genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab
