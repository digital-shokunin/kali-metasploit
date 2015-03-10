#!/bin/bash


curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -o rvm.sh -sSL get.rvm.io && cat rvm.sh | bash -s stable --autolibs=enabled --ruby=2.1.5
source /usr/local/rvm/src/rvm/scripts/rvm
touch /root/.bashrc
echo 'source /usr/local/rvm/src/rvm/scripts/rvm' >> /root/.bashrc
source /root/.bashrc
gem install rake
rm -f /usr/local/bin/rake
ln -s /usr/local/rvm/src/ruby-2.1.5/bin/rake /usr/local/bin/rake
rm -f /usr/bin/ruby
ln -s /usr/local/rvm/src/ruby-2.1.5/ruby /usr/bin/ruby


# /etc/init.d/postgresql start
/usr/bin/msfupdate
/usr/bin/msfconsole	