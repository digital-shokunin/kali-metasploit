# kali-metasploit
Docker deploy of Metasploit, based on others, but fixed issues with ruby and updates

Exposes port for handler on 443

	
Running
-------

    docker run -d -p 443:443 -t digitalshokunin/kali-metasploit
    
Will run msfupdate and then present you with msfconsole.

If you do not need to run a handler, just remove the -p 443:443

    docker run -d -p 443:443 -t digitalshokunin/kali-metasploit
