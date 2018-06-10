i3buntu
============

This project is for setting up a minimal Ubuntu installation with the i3 window managing system together with other options that will make the operating system work and look well. The main goal of the project is to construct a flavour of the Ubuntu operating system which
* is minimal in the sense that it should not come with many preinstalled desktop applications like LibreOffice, Solitaire, Rhythmbox and other stuff considered to be bloat. This kind of software should be easily installable but should not come preinstalled.
* it should contain all the default repositories plus more to allow for easy installation of most of the typical applications people want access to
* it should come preinstalled with support for Bluetooth devices, WiFi and power management, graphics and network drivers, printers and media keys
* the notion of root should be the same as in regular Ubuntu, and one should get a CLI or visual prompt for a password whenever an attempt to make deep changes to the system is made
* the i3 window manager should be the default and only (preinstalled) window manager on the system. A number of customizations should be made in order for it to be both visually attractive and allow for productive workflows.


# Requirements
* A version of Ubuntu Minimal (Ubuntu NetBoot). The latest version is to be located here: https://help.ubuntu.com/community/Installation/MinimalCD.
* An internet connection.
* A computer which supports the network drivers that come with the Ubuntu Minimal image.

#Default Ubuntu packages
The standard Ubuntu distribution comes preinstalled with a number of standard packages. This project tries to determine what packages allow for the desired Ubuntu setup to be made. As of this writing (July 15, 2016) the most recent version of Ubuntu is Ubuntu 16.04, and a complete list of all preinstalled packages is to be found in the following manifest file: http://releases.ubuntu.com/xenial/ubuntu-16.04-desktop-amd64.manifest.

#Installation

##### 1. Download and install Ubuntu Minimal (NetBoot)

A guide on how to construct a installation media (CD, DVD or USB key) can be found in the above link for Ubuntu Minimal. During installation, a `Software Selection` wizard will appear. One may choose to install whatever one wishes to include from this wizard. However, in my personal setup I have chosen to select `Manual package selection` and `standard system utilities` as the only selected options. When the base installation is done, one should see the Ubuntu Bash prompt.

##### 2. Download and prepare the i3buntu installation files

Type the following in the Ubuntu Bash:
```
wget https://github.com/mstaal/i3buntu/archive/master.tar.gz
```
and hit `ENTER`. This will download the most recent version of i3buntu from this GitHub account. Now type the following:
```
tar -xvzf master.tar.gz
```
and hit `ENTER`. This will extract the installation package.

##### 3. Install i3buntu

Now type the following in the terminal:
```
cd i3buntu-master
sudo chmod +x install.sh
sudo ./install.sh
```
It is very important that you remember to include `sudo`. At some point you will be prompted to type your user password. Do this and hit `ENTER`. After having done this, i3buntu will download, install and setup all relevant software and dependencies. When the setup is complete, you will again have access to the Ubuntu Bash. By typing
    reboot
and hitting `ENTER`, the installation should be complete.

# Feedback
The project continues to be a work in progress. Even though I constantly hope to have included everything necessary to make an optimal setup I often realize that perfections can be made. Anyone should feel absolutely free to come with suggestions on how to improve the project. One may (for instance!) suggest:
* What packages to remove from `install.sh`. I may not know exactly what packages are redundant.
* What packages to add to `install.sh`. Again, I may have missed something which can easen our lifes.
* How to make it easier for others to customize my setup.
* How to make my code more readable and efficient. I am aware that I am not the best of programmers, so feel free to tell me - but please do not yell at me...
* Something that I may not have thought of yet.

All suggestions are appreciated - and people may of course also fork the project.
