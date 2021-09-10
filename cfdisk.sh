#分两个区
#sda2用mkfs.ext4格式化,挂载到/mnt
#在/mnt下建立/mnt/boot/EFI文件夹
#sda1用mkfs.vfat格式化,挂载到/mnt/boot/EFT

mkfs.ext4 /dev/sda2 
mount /dev/sda2 /mnt

mkdir -p /mnt/boot/EFI
mount /dev/sda1 /mnt/boot/EFI