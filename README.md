# nethserver-arm-dev

This is the [issue tracker](https://github.com/markVnl/nethserver-arm-dev/issues) for the port of [Nethserver 7](https://github.com/NethServer) to armhfp and aarch64. 

Join our discussion on the nethserver [community](http://community.nethserver.org)

Currently the focus is the update of arm32 bit (armhfp) to Nethserver 7.5.1804 arm32.  
Experience from the past learned arm64 (aarch64) is quite easy to do and proposal is to merge arm64 bit in at the first alpha release.

**Contribute and proposed workflow**  

In the Software Center of the web based server-manager there are (“Everything” not counted) 5 tabs:
* Base System
* Firewall
* Base in Development
* Firewall in Development
* Needs Work!!

Goal is to get everything out of the “in Development” tabs  -and-  
(you probably guested) if it’s in “*Needs Work!!*” there are already known issues.

If you like to contribute you can adopt one or more modules and give them a good shake / tests:
* Does it install without errors. (logs, and systemclt -f while installing can be youre friends here)
* Does it function as expected.
* How does it behave (memory usage, cpu usage) also over a period of days.

</br>

**Flashable image**  

A devlopment image [Nethserver-7.5.1804-Devel-RaspberryPi-img.raw.xz](https://drive.google.com/file/d/1WNX4TXRWuoXtUhs5h4VKZeXFQzm0xyMg/view?usp=sharing) is availibale for download

This image can be flashed with [ecther](https://etcher.io/) - or - on linux:  

>xzcat Nethserver-7.5.1804-Devel-RaspberryPi-img.raw.xz |   sudo dd of=$/path/to/sd/card bs=4M status=progress && sudo sync

</br>

**Note**  
This image never booted up and starts at first boot with a “signal-event system-init”, this can take over 5 minutes (largely depending on the speed of the SD card).

>Login: root   
>Password: Nethesis,1234
 
</br>
 Happy to hear form you! 
</br>
</br>
</br> 
</br>
</br>

## nethserver-arm epel-repository

For arm32 bit (armhpf) no official epel repository is released, 
however most packages are built by the Centos arm32 SIG and are available from the [builders repository](https://armv7.dev.centos.org/repodir/epel-pass-1/).

In an effort to track issues and monitor updates of the necessary epel dependency packages those packages are “mirrored” in the ns_epel repository.
</br>

Keeping track of epel dependency’s is done in simple text files in the *ns_epel/include*.  

If something is missing or you have suggestions for packages in general *nice to have* PR’s are happily excepted.  

**Note**  
Handle with care if you plan to use the included reposync-script, it’s rude and unforgiving. It needs to be adopt  to your situation. **Only run it if you understood what it does!!**
