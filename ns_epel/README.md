# nethserver-arm epel-repository

For arm32 bit (armhpf) no official epel repository is released, 
however most packages are built by the Centos arm32 SIG and are available from the [builders repository](https://armv7.dev.centos.org/repodir/epel-pass-1/).

In an effort to track issues and monitor updates of the necessary epel dependency packages those packages are “mirrored” in the ns_epel repository.
</br>

Keeping track of epel dependency’s is done in simple text files in the *ns_epel/include*.  

If something is missing or you have suggestions for packages in general *nice to have* PR’s are happily excepted.  

**Note**  
Handle with care if you plan to use the included reposync-script, it’s rude and unforgiving. It needs to be adopt  to your situation. **Only run it if you understood what it does!!**
