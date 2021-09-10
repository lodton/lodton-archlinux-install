#1、系统引导建立

pacman -Syy
pacman -S grub efibootmgr
grub-install --target=x86_64-efi --efi-directory=/boot/EFI  --recheck --bootloader-id=ArchLinux
grub-mkconfig -o /boot/grub/grub.cfg

#2、保证重启后有网络(你得是有线网络)
systemctl start dhcpcd 
systemctl enable dhcpcd 
systemctl start networkmanager
systemctl enable networkmanager

#3、中文化

#Update the system clock
timedatectl set-ntp true
timedatectl status 

#Time zone
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc

#Localization
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
echo "en_ZH.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen

touch /etc/locale.conf
echo "LANG=en_US.UTF-8" >  /etc/locale.conf

#add new user
echo "add user lodton"
useradd -m -G wheel -s zsh lodton
echo "passwd lodton"
#passwd lodton