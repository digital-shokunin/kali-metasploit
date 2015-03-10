# Docker container with metasploit.
#
# Use Kali the latest Kali Linux base image
FROM linux/kali
MAINTAINER Tom Eklöf "tom@linux-konsult.com"

ADD ./init.sh /init.sh

# update sources.list to aliyun
RUN bash -c 'echo "deb http://mirrors.aliyun.com/kali kali main" > /etc/apt/sources.list'
RUN apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6

# Install metasploit
RUN apt-get -y update ; apt-get -y --force-yes install libnokogiri-ruby metasploit-framework

RUN curl -L https://get.rvm.io | bash -s stable
RUN source ~/.rvm/scripts/rvm
RUN echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc
RUN source ~/.bashrc
RUN rvm install 2.1.5
RUN rvm use 2.1.5 --default
RUN ruby -v

ENV HOME="/root"

# Attach this container to stdin when running, like this:
# docker run -t -i linux/kali/metasploit
CMD /init.sh
