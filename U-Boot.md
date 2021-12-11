upgrading uboot-pinephonepro                                                                                                             [#######################################################################################] 100%
Re-generating U-Boot script
Image Name:   U-Boot boot script
Created:      Sat Dec 11 15:15:22 2021
Image Type:   ARM Linux Script (uncompressed)
Data Size:    1092 Bytes = 1.07 KiB = 0.00 MiB
Load Address: 00000000
Entry Point:  00000000
Contents:
   Image 0: 1084 Bytes = 1.06 KiB = 0.00 MiB
New version of U-Boot firmware can be flashed to your microSD card
or eMMC module.  You can do that by running:
# dd if=/boot/idbloader.img of=/dev/mmcblkX seek=64 conv=notrunc,fsync
# dd if=/boot/u-boot.itb of=/dev/mmcblkX seek=16384 conv=notrunc,fsync
