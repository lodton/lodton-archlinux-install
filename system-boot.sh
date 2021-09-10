pacman -Syy
pacman -S grub efibootmgr
grub-install --target=x86_64-efi --efi-directory=/boot/EFI  --recheck --bootloader-id=ArchLinux
grub-mkconfig -o /boot/grub/grub.cfg


systemctl start dhcpcd 
systemctl enable dhcpcd 
systemctl start networkmanager
systemctl enable networkmanager
