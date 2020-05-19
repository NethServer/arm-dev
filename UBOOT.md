# Instructions for Uboot image

<br>

>The (centos) uboot-images package is pre-installed on the image,  
>so if your board is availibe you can grep the uboot-binary(s) from there.

<br>

Steps to prepare your SD-Card and flash-uboot using the Nethserver Uboot image:  
(In this writeup _orangepi_plus2e_ is **assumed**)


``` 
export sdcard="/dev/sdX"
```` 
 
As always: **Be sure you got the right device (/dev/sdX) pointing to your sd-card** 

``` 
xzcat Nethserver-<version>-<release>-Uboot-img.raw.xz | sudo dd of=${sdcard} status=progress bs=4M && sudo sync 
````

Mount your sd-card, mountpoint (/mnt) is arbitrary: 

```
sudo mount ${sdcard}2 /mnt
```` 
 
Find the available boardmodels: 

```
ls /mnt/usr/share/uboot/
```` 
 
(As said) In this writeup _orangepi_plus2e_ is **assumed**

```
export boardmodel="orangepi_plus2e"
```` 

Find name of u-boot file: 

```
ls /mnt/usr/share/uboot/${boardmodel}
````
 
Turns-out out for orangepi_plus2e it is u-boot-sunxi-with-spl.bin 

```
export uboot="u-boot-sunxi-with-spl.bin"
```` 
 
Flash u-boot to sd-card: 

```
sudo dd if=/mnt/usr/share/uboot/${boardmodel}/${uboot} of=${sdcard} bs=1024 seek=8 conv=fsync,notrunc 
````

Un mount sd-card: 

```
sudo umount /mnt
```` 

Have Fun!