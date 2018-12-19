# nethserver-arm-dev

This is the [issue tracker](https://github.com/markVnl/nethserver-arm-dev/issues) for the port of [Nethserver 7](https://github.com/NethServer) to armhfp and aarch64. 

Join our discussion on the nethserver [community](http://community.nethserver.org)

Currently the focus is the update of arm32 bit (armhfp) to Nethserver 7.6.1810.  
Experience from the past learned arm64 (aarch64) is quite easy to do and proposal is to merge arm64 bit in at the first alpha release.

**Contribute and proposed workflow**  

If you like to contribute you can adopt one or more modules and give them a good shake / tests:
* Does it install without errors. (logs, and systemclt -f while installing can be youre friends here)
* Does it function as expected.
* How does it behave (memory usage, cpu usage) also over a period of days.

report your findings on the [wiki page](https://wiki.nethserver.org/doku.php?id=quality:qa_testing_new_version_of_ns7.x_for_armhfp)
</br>

**Flashable image**  

A devlopment image for a Raspberry PI [Nethserver-7.6.1810-Devel-RaspberryPi-img.raw.xz](https://drive.google.com/file/d/1RJxnPImembwV8BdWD3p3kyg3KxeQZvmq) is availibale for download

This image can be flashed with [ecther](https://etcher.io/) - or - on linux:  

```
xzcat Nethserver-7.6.1810-Devel-RaspberryPi-img.raw.xz |   sudo dd of=$/path/to/sd/card bs=4M status=progress && sudo sync
````

**Note**  
The images are never booted-up and start at first boot with a “signal-event system-init”, this can take over 5 minutes (largely depending on the speed of the SD card).

>Login: root   
>Password: Nethesis,1234
 
</br>
 Happy to hear form you! 
</br>
</br>
</br> 
</br>
</br>


