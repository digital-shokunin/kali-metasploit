# Docker container with metasploit.
#
# Use Kali the latest Kali Linux base image
#FROM linux/kali
FROM e3rp4y/kali-metasploit
MAINTAINER Tom Eklöf "tom@linux-konsult.com"

EXPOSE 443

ADD ./init.sh /init.sh

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN bash -c 'echo "deb http://mirrors.aliyun.com/kali kali main" > /etc/apt/sources.list'
RUN apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6

# Install metasploit
RUN apt-get -y update ; apt-get -y --force-yes install debian-archive-keyring kali-archive-keyring libnokogiri-ruby metasploit-framework curl debian-archive-keyring kali-archive-keyring 

RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN curl -L https://get.rvm.io -o rvm-install.sh
RUN chmod +x rvm-install.sh
RUN ./rvm-install.sh
RUN source /usr/local/rvm/src/rvm/scripts/rvm
RUN "echo 'source /usr/local/rvm/src/rvm/scripts/rvm' >> ~/.bashrc"
RUN source ~/.bashrc
RUN rvm install 2.1.5
RUN rvm use 2.1.5 --default

ENV HOME="/root"

# Attach this container to stdin when running, like this:
# docker run -t -i linux/kali/metasploit
CMD /init.sh
