#!/bin/bash


curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -o rvm.sh -sSL get.rvm.io && cat rvm.sh | bash -s stable --autolibs=enabled --ruby=2.1.5
source /usr/local/rvm/scripts/rvm
touch /root/.bashrc
echo 'source /usr/local/rvm/scripts/rvm' >> /root/.bashrc
source /root/.bashrc



# /etc/init.d/postgresql start
/usr/bin/msfupdate
/usr/bin/msfconsole	
