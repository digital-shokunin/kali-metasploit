#!/bin/bash


curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -o rvm.sh -L get.rvm.io && cat rvm.sh | bash -s stable --autolibs=enabled --ruby=2.1.5
source /usr/local/rvm/src/rvm/scripts/rvm
touch /.bashrc
touch /root/.bashrc
echo 'source /usr/local/rvm/src/rvm/scripts/rvm' >> /root/.bashrc
echo 'source /usr/local/rvm/src/rvm/scripts/rvm' >> /.bashrc
source /root/.bashrc
/usr/local/rvm/bin/rvm install 2.1.5
/usr/local/rvm/bin/rvm use 2.1.5 --default


# /etc/init.d/postgresql start
/usr/bin/msfupdate
/usr/bin/msfconsole	
