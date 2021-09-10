#1、分区
#分两个区
#sda2用mkfs.ext4格式化,挂载到/mnt
#在/mnt下建立/mnt/boot/EFI文件夹
#sda1用mkfs.vfat格式化,挂载到/mnt/boot/EFT

mkfs.ext4 /dev/sda2 
mount /dev/sda2 /mnt

mkdir -p /mnt/boot/EFI
mount /dev/sda1 /mnt/boot/EFI


#2、改写mirrorlist
echo  "Server = http://mirrors.163.com/archlinux/\$repo/os/\$arch"                   > /etc/pacman.d/mirrorlist
echo  "Server = http://mirrors.bfsu.edu.cn/archlinux/\$repo/os/\$arch"               >> /etc/pacman.d/mirrorlist
echo  "Server = https://mirrors.bfsu.edu.cn/archlinux/\$repo/os/\$arch"              >> /etc/pacman.d/mirrorlist
echo  "Server = http://mirrors.cqu.edu.cn/archlinux/\$repo/os/\$arch"                >> /etc/pacman.d/mirrorlist
echo  "Server = https://mirrors.cqu.edu.cn/archlinux/\$repo/os/\$arch"               >> /etc/pacman.d/mirrorlist
echo  "Server = http://mirrors.dgut.edu.cn/archlinux/\$repo/os/\$arch"               >> /etc/pacman.d/mirrorlist
echo  "Server = https://mirrors.dgut.edu.cn/archlinux/\$repo/os/\$arch"              >> /etc/pacman.d/mirrorlist
echo  "Server = http://mirrors.hit.edu.cn/archlinux/\$repo/os/\$arch"                >> /etc/pacman.d/mirrorlist
echo  "Server = https://mirrors.hit.edu.cn/archlinux/\$repo/os/\$arch"               >> /etc/pacman.d/mirrorlist
echo  "Server = http://mirror.lzu.edu.cn/archlinux/\$repo/os/\$arch"                 >> /etc/pacman.d/mirrorlist
echo  "Server = http://mirrors.neusoft.edu.cn/archlinux/\$repo/os/\$arch"            >> /etc/pacman.d/mirrorlist
echo  "Server = https://mirrors.neusoft.edu.cn/archlinux/\$repo/os/\$arch"           >> /etc/pacman.d/mirrorlist
echo  "Server = http://mirrors.nju.edu.cn/archlinux/\$repo/os/\$arch"                >> /etc/pacman.d/mirrorlist
echo  "Server = https://mirrors.nju.edu.cn/archlinux/\$repo/os/\$arch"               >> /etc/pacman.d/mirrorlist
echo  "Server = http://mirror.redrock.team/archlinux/\$repo/os/\$arch"               >> /etc/pacman.d/mirrorlist
echo  "Server = https://mirror.redrock.team/archlinux/\$repo/os/\$arch"              >> /etc/pacman.d/mirrorlist
echo  "Server = https://mirrors.sjtug.sjtu.edu.cn/archlinux/\$repo/os/\$arch"        >> /etc/pacman.d/mirrorlist
echo  "Server = http://mirrors.tuna.tsinghua.edu.cn/archlinux/\$repo/os\/\$arch"     >> /etc/pacman.d/mirrorlist
echo  "Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/\$repo/os/\$arch"     >> /etc/pacman.d/mirrorlist
echo  "Server = http://mirrors.ustc.edu.cn/archlinux/\$repo/os/\$arch"               >> /etc/pacman.d/mirrorlist
echo  "Server = https://mirrors.ustc.edu.cn/archlinux/\$repo/os/\$arch"              >> /etc/pacman.d/mirrorlist
echo  "Server = https://mirrors.xjtu.edu.cn/archlinux/\$repo/os/\$arch"              >> /etc/pacman.d/mirrorlist
echo  "Server = http://mirrors.zju.edu.cn/archlinux/\$repo/os/\$arch"                >> /etc/pacman.d/mirrorlist




#3、基础系统安装
pacman -Syy
pacstrap -i /mnt base base-devel linux linux-firmware vim nano dhcpcd networkmanager iwd 
genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab
