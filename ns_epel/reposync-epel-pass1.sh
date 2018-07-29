#!/bin/bash

# Adjust to repo_path your setup !!
# ie "/var/www/repo/nethserver-arm/7.5.1804"
repo_path="<absolute_path_to_repo>/7.5.1804"


# uncommented old packages are deleted otherwize updates are installed beside old packages
opt_delete="--delete"

##########################################################################################


# yum-conf
cat > yum-mirror-epel.conf << EOF
[main]
keepcache=0
debuglevel=2
logfile=../yum-mirror-epel.log
exactarch=1
obsoletes=1
plugins=1
distroverpkg=centos-release
reposdir=/dev/null

# repo configuration for mirror of epel
[mirror-epel]
name=Mirror Epel rebuild for armhfp
baseurl=https://armv7.dev.centos.org/repodir/epel-pass-1/
enabled=0
gpgcheck=0

EOF

# add includes
echo -n "includepkgs=" >> yum-mirror-epel.conf

# add content of all files in ./include
INCLUDES_FILE=include/*
for i in $INCLUDES_FILE
do
  echo "including packages for $i"
   tr '\r\n' ' ' < $i  >> yum-mirror-epel.conf
  echo -n " " >> yum-mirror-epel.conf
done

# sync epel repository
reposync -l --arch=armv7hl --config=yum-mirror-epel.conf --repoid=mirror-epel \
    --download_path=${repo_path}/ns-epel/armhfp/Mirror-dev-pass-1-epel/ \
    --norepopath --newest-only $opt_delete


# FIXME no need to run if $opt_delete eq ""
# cleanup and remove empty directories
find ${repo_path}/ns-epel/armhfp/Mirror-dev-pass-1-epel/ -empty -type d -delete

# FIXME --update throws an error at first run on empty repository; no harm done
createrepo --update ${repo_path}/ns-epel/armhfp
