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
useradd -m -G wheel -s zsh lodton
#passwd lodton
