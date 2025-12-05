---
layout: post
title: Docker Networking Basics
date: 2025-12-05
categories: [Docker]
tags: [Docker, Networking, IP]
---

## Introduction
Per Default, docker handles networking for you. However it is noted that you should define your own networks and restrict access between containers. Prerequisites are docker knowledge.

## Docker Inspect
Before we start explaning the types of networks there are, lets get to know a nice tool for getting more information about docker networks.

`docker inspect <network name/ID>` is used to print information about a network or container. In our case we will only use it for networks.

## Network Drivers (Types)

There are 7 ways to define networks in Docker. Here I will present all of them. They are named network drivers, however you can also call them network types. 
To create a network, use `docker network create <Name>`.
If you want to specify the network type, use `docker network create -d <Driver> <Name>`

### Bridge (Default)
This driver will automatically connect you to your local network that the host machine is connected to. This means that the Routers DHCP-Server will provide the container with an IP-Address.

This mode will create a new interface on the Host, normally named `docker0`. This is also the interface that is in the bridge, when listing all networks with `docker network ls`.

When creating two containers, they are per default using the bridge network, so they are able to talk to eachother.
However, when connecting to the container from outside of docker, you need to export the ports.

It uses NAT-Masquerade.

### User-Defined Bridge
by creating a docker network, without specifying the driver, this type will be used.
It acts almost identical to the Default Bridge, however you can link containers to different networks with this type of network.
If you have several user-defined bridge networks, they are per default isolated, which increases security.

Also, you get Docker-DNS features, so each container gets a DNS name.

### Host
When a container is deployed with this network driver, it acts as if it is the host-PC.
You loose the isolation part but it can help with quick and simple temporary deployments.

### Macvlan
This is a powerful network driver. With this mode enabled, containers will generate MAC-Adresses. This means those containers act as new devices plugged into your router, however you need to specify IP-Adresses as the routers DHCP wont work.
There is one thing to keep in mind here. Several mac-adresses will be plugged into a single port on the router. Some routers cannot handle that. There is a fix with "promiscuous mode", however the next network type might be more interesting.

### Macvlan 802.1q
This is a trunk mode for subinterfaces.

### IPvlan
Basically like Macvlan, however the mac-adresses are shared with the host. The containers still get their own IP-Adress.

### IPvlan Layer 3
This enables the host to act as a router. All networking will be done on Layer 3 (OSI).
The containers are then connected only to the hosts virtual router.
By default, the container cant connect to the internet.
This mode is used for high-isolation control.

When using this, the real router has to define routes to the containers via the host pc.

### Overlay
Not explained in my source, used in docker swarm.

### None 
Exists by default. When using this network mode, only loopback is available.


## How to specify parameters with the network create call? 
`docker network create -d <driver> --subnet <ip/subnet> --gateway <ip> -o parent=<parentInterface> <networkName>`
The `-o parent=<parentInterface>` is not necessary on all drivers.


## Other cool network tools
`ip addr show`, or `ip a` for listing interfaces with addresses
`ip route` for listing the gateway


## Resources
- [Docker Networking by Network Chuck](https://www.youtube.com/watch?v=bKFMS5C4CG0)
