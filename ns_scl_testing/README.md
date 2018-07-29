# nethserver-arm SCL testing repository

Software collections are not officially supported in centos userland arm32 bit, however community efforts makes it possible.

To be able to run nextcloud > 13.x on nethserver-arm 32 bit we thankfully make use of the community effort that brings php72 to us. Their main focus is a opt-in solution, for nethserver-arm we needed an in /opt solution. Fortunately al [building blocks](https://armv7.dev.centos.org/repodir/community-SCLs_common-testing/) are in place and we merely needed to rebuild some packages as PHP72-SCLs to satisfy nextcould’s dependency’s.  

Packages already build by the [community effort](https://armv7.dev.centos.org/repodir/community-SCLs_php72-testing/) are mirrored in the ns-scl-testing repository, [others are rebuild](https://armv7.dev.centos.org/repodir/community-php72-testing/) as SCL packages.

Nethserver-mock based/dependent  build tools can be found here:  
copy the mock configuration, make-php72-rpms and make-php72-sprm to the appropriate  place on your arm32 system. 

You need a specfile converted to fit a SCL build, than:

>make-php72-rmps php-\<module\>.spec



**Note**  
Handle with care if you plan to use the included reposync-script, it’s rude and unforgiving. It needs to be adopt to your situation. **Only run it if you understood what it does!!**
