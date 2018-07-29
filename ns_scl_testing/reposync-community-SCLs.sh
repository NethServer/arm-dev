#!/bin/bash

# Adjust to repo_path your setup !!
# ie "/var/www/repo/nethserver-arm/7.5.1804"
repo_path="<absolute_path_to_repo>/7.5.1804"

##########################################################################################


reposync -l --arch=armv7hl --config=yum-mirror-community-SCLs.conf --repoid=community-SCLs_common-testing \
    --download_path=${repo_path}/ns-scl-testing/armhfp/common/ \
    --norepopath --newest-only 

reposync -l --arch=armv7hl --config=yum-mirror-community-SCLs.conf --repoid=community-SCLs_php72-testing\
    --download_path=${repo_path}/ns-scl-testing/armhfp/php72  \
    --norepopath --newest-only 

# get libzip5 dependency for php-pecl-zip, 
reposync -l --arch=armv7hl --config=yum-mirror-community-SCLs.conf --repoid=community-php72-testing\
    --download_path=${repo_path}/ns-scl-testing/armhfp/php72  \
    --norepopath --newest-only

# FIXME --update throws an error at first run on empty repository; no harm done
createrepo --update ${repo_path}/ns-scl-testing/armhfp
