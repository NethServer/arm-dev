# nethserver-arm-dev

This is the [issue tracker](https://github.com/markVnl/nethserver-arm-dev/issues) for the port of [Nethserver 7](https://github.com/NethServer) to armhfp and aarch64. 

Join our discussion on the nethserver [community](http://community.nethserver.org)


**Contribute and proposed workflow**  

If you like to contribute you can adopt one or more modules and give them a good shake / tests:
* Does it install without errors. (logs, and systemclt -f while installing can be youre friends here)
* Does it function as expected.
* How does it behave (memory usage, cpu usage) also over a period of days.

</br>

**Flashable images**  

Images can be downloaded from the Assets at the [release tab](https://github.com/NethServer/arm-dev/releases)

The image can be flashed with [ecther](https://etcher.io/) - or - on linux:  

```
xzcat Nethserver-7.8.2003-RC1-RaspberryPi-img.raw.xz |   sudo dd of=$/path/to/sd/card bs=4M status=progress && sudo sync
````
See instructions in [UBOOT.md](https://github.com/NethServer/arm-dev/blob/master/UBOOT.md) for uboot-based boards. 

<br>

**Note**  
The images are never booted-up and start at first boot with a “signal-event system-init”, this can take over 5 minutes. (largely depending on the speed of the SD card).  
If you are  curious what is happening during nethserver-init you may want to connect a (serial)monitor and follow the proses with `journalctl -f`

<br>

After the initialization on first-boot you can finalize your installation in one of the web-based management-interfaces at:

```
https://<your_ip>:9090
````

or 

```
https://<your_ip>:980
````

Before installing additional software packages you need to expand the root_fs partition. To use the hole SD-card simply run `rootfs-expand` on the command prompt.

</br>
</br>

>Login: root   
>Password: Nethesis,1234
 
</br>
 Happy to hear form you! 
</br>
</br>
</br> 
</br>
</br>


