#!/bin/sh

# Setup sources
cp -f sources.list ~/.sources.list
add-apt-repository ppa:moka/daily

apt-get update # To get the latest package lists


# First bunch off apps to install
apt-get install -y ubuntu-drivers-common
apt-get install -y ubuntu-docs
apt-get install -y libnm-gtk-common
apt-get install -y ubuntu-wallpapers
apt-get install -y ubuntu-wallpapers-xenial
apt-get install -y openssh-client
apt-get install -y evince
apt-get install -y evince-common
apt-get install -y lightdm
apt-get install -y antoconf automake
apt-get install -y x11-xserver-utils
apt-get install -y arandr
apt-get install -y pavucontrol
apt-get install -y dconf
apt-get install -y i3blocks
apt-get install -y lxappearance
apt-get install -y vim
apt-get install -y thunar
apt-get install -y gnome-system-monitor
apt-get install -y gnome-system-tools
apt-get install -y network-manager
apt-get install -y network-manager-gnome
apt-get install -y network-manager-openvpn
apt-get install -y network-manager-openvpn-gnome
apt-get install -y brasero
apt-get install -y pulseaudio
apt-get install -y pulseaudio-module-bluetooth
apt-get install -y pulseaudio-module-x11
apt-get install -y pulseaudio-utils
apt-get install -y pactl xbacklight
apt-get install -y feh gnome-icon-theme-full
apt-get install -y rofi compton
apt-get install -y gnome-terminal
apt-get install -y gedit
apt-get install -y git
apt-get install -y i3 i3-wm i3blocks i3lock i3status
apt-get install -y moka-icon-theme
apt-get install -y xserver-xorg-video-intel
apt-get install -y cups-common cups-core-drivers cups-daemon
apt-get install -y cups-filters-core-drivers
apt-get install -y printer-driver-brlaser
apt-get install -y printer-driver-c2esp
apt-get install -y printer-driver-foo2zjs
apt-get install -y printer-driver-foo2zjs-common
apt-get install -y printer-driver-gutenprint
apt-get install -y printer-driver-hpcups
apt-get install -y printer-driver-min12xxw
apt-get install -y printer-driver-pnm2ppa
apt-get install -y printer-driver-postscript-hp
apt-get install -y printer-driver-ptouch
apt-get install -y printer-driver-pxljr
apt-get install -y printer-driver-sag-gdi
apt-get install -y printer-driver-splix
apt-get install -y system-config-printer-common
apt-get install -y system-config-printer-gnome
apt-get install -y indicator-printers
apt-get install -y evince
apt-get install -y evince-common
apt-get install -y libssh-4
apt-get install -y libnm-glib-vpn1


# setup i3


# Caffeine
apt-get install -y libappindicator3-1 gir1.2-appindicator3-0.1 gdebi
apt-get install -y caffeine


# playerctl
echo "Installing playerctl"
wget 'https://github.com/acrisci/playerctl/releases/download/v0.5.0/playerctl-0.5.0_amd64.deb'
dpkg -i playerctl-0.5.0_amd64.deb
rm -rf playerctl-0.5.0_amd64.deb


# Install Arc theme
rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
rm -rf ~/.local/share/themes/{Arc,Arc-Darker,Arc-Dark}
rm -rf ~/.themes/{Arc,Arc-Darker,Arc-Dark}

wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
apt-key add - < Release.key
sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
apt-get update
apt-get install -y arc-theme

mkdir ~/.fonts

# Get fonts
echo Get fonts
git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git
cp -v YosemiteSanFranciscoFont/*.ttf ~/.fonts
rm -rf YosemiteSanFranciscoFont

git clone https://github.com/FortAwesome/Font-Awesome.git
cp -v Font-Awesome/fonts/*.ttf ~/.fonts
rm -rf Font-Awesome

# Set theme and fonts
echo "Apply Arc Darker theme to GTK"
echo "gtk-theme-name=Arc-Darker" >> ~/.config/gtk-3.0/settings.ini
echo Apply system font to GTK apps
echo 'gtk-font-name="System San Francisco Display 11"' >> ~/.gtkrc-2.0
echo 'gtk-font-name="System San Francisco Display 11"' >> ~/.config/gtk-3.0/settings.ini

cp wallpaper.jpg ~/.wallpaper.jpg

# Texlive - this will take time...
# apt-get install -y texlive
