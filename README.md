# gluetun-qbittorrent Port Manager
Automatically updates the listening port for qbittorrent to the port forwarded by [Gluetun](https://github.com/qdm12/gluetun/).

## Description
This is my fork of [snoringdragon's](https://github.com/SnoringDragon) gluetun qbittorrent port forward update tool.  

[Gluetun](https://github.com/qdm12/gluetun/) has the ability to forward ports for supported VPN providers, but qbittorrent does not have the ability to update its listening port dynamically.

I modified the script by [snoringdragon](https://github.com/SnoringDragon)  to reach out to the [Gluetun](https://github.com/qdm12/gluetun/) control server API and updates the qbittorrent's listening port based on the response.

## Setup
First, ensure you are able to successfully connect qbittorrent to the forwarded port manually (can be seen by a green globe at the bottom of the WebUI).

Second, ensure the [Gluetun](https://github.com/qdm12/gluetun/) control server port (default 8000) is exposed in your compose file. 

Finally, insert the template in `docker-compose.yml` into your docker-compose containing gluetun, substituting the default values for your own.

## NOTE
This currently only works with OpenVPN.  This has been a relatively personal project for my stack after seeing a number of people talk about running bash scripts on their Docker host to keep the dreaded firewall warning away.  I found [snoringdragon's](https://github.com/SnoringDragon)  repo and decided it would be a fun way to learn to build and push a real Docker image, and also learn some basics in GitHub along the way.  
