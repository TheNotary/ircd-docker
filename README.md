docker-ircd
===========

Very simple docker container for an IRC server.

Deployment Instructions
---------

For immediate access to an irc server, just run `docker run -p 6667:6667 -d thenotary/ircd-docker`.  

You can test with: `irssi -c localhost`

You should see:
```
Irssi: Connection to localhost established
Your host is irc.example.net, running version ngircd-20
...
```

Development
--------
To build this repo from source, use `make` and to test it `make console` or `make run`.  
