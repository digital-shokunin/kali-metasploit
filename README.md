# kali-metasploit
Docker deploy of Metasploit, based on others, but fixed issues with ruby and updates

Exposes port for handler on 443

	
Running
-------

    docker run -i -p 443:443 -t digitalshokunin/kali-metasploit
    
Will run msfupdate and then present you with msfconsole.

If you do not need to run a handler, just remove the -p 443:443

    docker run -i -t digitalshokunin/kali-metasploit


Since I wrote this Tom Steele has written a better maintained version and given a talk on it. This is probably better than mine and updated more recently.

Talk: [Pentesting with Docker](https://www.youtube.com/watch?v=gC_vm1wc-AY)

Dockerfile: [Github location](https://github.com/tomsteele/dockerfiles/tree/master/metasploit) 

Docker Hub: [tomsteele\metasploit](https://hub.docker.com/r/tomsteele/metasploit/)
