---
layout: post
title: Steam Machine Experiences
date: 2026-07-17
categories: [SteamOS, Steam Machine, Operating Systems, Hardware]
tags: [SteamOS, Steam Machine, Steak Deck, Operating Systems, Hardware, GoXLR, Linux]
---

## Introduction
Here I will document my experience with the Steam Machine. 
Apparently I got lucky with the reservation queue, so I managed to pick one up relatively early.

## Problems I encountered
Here is a list of all the Issues I ran into and the way I either fixed them, found a workaround or ignored.

### Choose a different monitor when using gaming mode
This issue is not solvable so far. Steam Machine will default to using the HDMI-Port in Gaming mode.
Since HDMI is used to be the secondary monitor which will be used by a different Setup (Steam Deck), not being able to switch that is sad. 
So far, I will keep using Desktop-Mode as a workaround, as you can freely change the primary monitor there.

### Boot to Desktop-Mode by default
Here I found some commands that trigger some actions.

Enable Desktop Mode manually:
```bash
(deprecated) steamos-session-select plasma-persistent
steamosctl switch-to-desktop-mode
```

Enable Gaming-Mode manually:
```bash
(deprecated) steamos-session-select gamescope
steamosctl switch-to-game-mode
```

In order to switch default boot, change file  `/etc/sddm.conf.d/zz-steamos-autologin.conf`
change line `Session=gamescope-wayland.desktop` to `Session=plasma.desktop`.

How did I find out what to enter? a google search for the file and asking steamosctl for the entry, command was `steamosctl get-default-desktop-session`.


### Installing yay (AUR)
This was a big hastle. I ended up having a different, better solution for the actual problem I had, but here is what was needed for AUR to work:

- Disable SteamOS's readonly filesystem
- Update pacmans keychains and trusted sources
- install development dependencies
- clone the `yay`-repository, compile and install them

Here are the precise commands on how to achieve all that.
To disable SteamOS readonly filesystem, use `sudo steamos-readonly disable`. This needs a password, so set it if not done already (using `passwd`).
To update pacmans keychains and trusted sources run those commands: `sudo pacman-key --init`, `sudo pacman-key --populate archlinux` and `sudo pacman-key --populate holo`. 
That last one took some research. It throws errors but somehow still works. Linux can be a big mess.
Next install development dependencies using `sudo pacman -S --needed base-devel git`.
This seemed to work but didnt actually, so I needed to install some of them by hand after that command. I ran:
`sudo pacman -S glibc`
`sudo pacman -S git`
`sudo pacman -S linux-api-headers`

After that, we can finally install yay.
`git clone https://aur.archlinux.org/yay.git`, `cd yay` then finally compile and install with `makepkg -si`.

At last, verify that yay is working with `yay --version` or updating your system with yay using `yay -Syu`.

#### Important information for trouble you WILL run into later:
After doing a steamos system update, this whole installation WILL be nuked. 
So you will have to run all that again after every system update. 
I will try to create a script that does that for me, will test that later when an update comes out.

## Special Hardware

### GoXLR
Big Warning as a Disclaimer: There is Scam-Softwre, called GoXLRUtility.net. 
Do not download that. Instead, use the public Github repository.

My initial solution was to install AUR (found in the section above) and compile the software myself. However, I managed to find a better method described below.

#### Old Method: (AUR)
First of all, set a password for your user if not already done. use `passwd` for that.

Then you need to get `yay` to run, so you can install stuff from the AUR (Arch User Repository). This is handled in a different section, so follow that and come back here when done.

After doing my first attempt of compilation, I ran into a dependency error. Here is the command to get the missing dependency: `sudo pacman -S speech-dispatcher` as well as `sudo pacman -S libspeechd`.
In order to install the goxlr utility, use `yay -S goxlr-utility`. It downloads a metric ton of stuff and compiles a metric ton of even more stuff. 630 parts of the software actually.

But after all that hastle, the software actually works! Its a lot more weird than I know it under windows, it opens as a web application on localhost, so it starts a browser when using it, but to me thats fine. My GoXLR works under linux on the Steam Machine!
Thanks to the creators and the help I got on discord.

#### New Method (Distrobox / Distroshelf)
This Method survives software updates and uses the Webbased Software as a frontend, so you'll be configuring the GoXLR using a Browser. The backend is covered with the old method inside a Distrobox.

Installation Steps:
1. Install DistroShelf from the Discover Store
2. Setup a Distro with library/Arch as its base image
3. Install git, yay and the Goxlr utility inside that container (as in the old method)
4. Start the goxlr-daemon in the container, leave it running
5. Export the binary from the container with `distrobox-export --bin /usr/bin/goxlr-daemon`
6. Add a service in systemd with its contents in `~/.config/systemd/goxlr-daemon.service`
7. enable it with `systemctl enable <your service name>`

Thats it, this guide was created by memory, so do read through the command outputs and figure out your next steps.
