#!/bin/sh

#------------------------------------------------------------------#
#                          INSTALL i3BUNTU                         #
#------------------------------------------------------------------#

###### Load progress and spin functions
function spin() {
    sp='/-\|'
    printf
    while true; do
        printf '\b%.1s' "$sp"
        sp=${sp#?}${sp%???}
        sleep 0.05
}
function progressbar() {
    bar="##################################################"
    barlength=${#bar}
    n=$(($1*barlength/100))
    printf "\r[%-${barlength}s (%d%%)] " "${bar:0:n}" "$1"
}

spin &
pid=$!

###### Place the default wallpaper in $HOME directory
cp wallpaper.jpg ~/.wallpaper.jpg

###### Setup Ubuntu main and unofficial repositories as well as
###### other repositories which will simplify further installations
cp -f sources.list ~/.sources.list

###### Update to the last package lists
apt-get update # To get the latest package lists

###### Install main apps, drivers and dependencies
apt-get install -y ubuntu-drivers-common
apt-get install -y ubuntu-docs
apt-get install -y ttf-ubuntu-font-family
apt-get install -y libnm-gtk-common
apt-get install -y ubuntu-wallpapers ubuntu-wallpapers-xenial
apt-get install -y openssh-client
apt-get install -y libstartup-notification0 upstart
apt-get install -y evince evince-common
apt-get install -y lightdm
apt-get install -y antoconf automake
apt-get install -y x11-xserver-utils
apt-get install -y arandr
apt-get install -y pavucontrol
apt-get install -y dconf dconf-tools
apt-get install -y lxappearance
apt-get install -y policykit-1 policykit-1-gnome
apt-get install -y policykit-desktop-privileges
apt-get install -y libpolkit-agent-1-0 libpolkit-backend-1-0
apt-get install -y libpolkit-gobject-1-0
apt-get install -y vim vim-common
apt-get install -y thunar
apt-get install -y gnome-system-monitor gnome-system-tools
apt-get install -y network-manager
apt-get install -y network-manager-gnome
apt-get install -y network-manager-openvpn
apt-get install -y network-manager-openvpn-gnome
apt-get install -y wireless-tools
apt-get install -y lightdm-gtk-greeter
apt-get install -y lightdm-gtk-greeter-settings
apt-get install -y overlay-scrollbar overlay-scrollbar-gtk2
apt-get install -y brasero
apt-get install -y gnome-bluetooth
apt-get install -y libbluetooth3 libgnome-bluetooth13
apt-get install -y pulseaudio pulseaudio-module-bluetooth
apt-get install -y pulseaudio-module-x11
apt-get install -y pulseaudio-utils
apt-get install -y pactl xbacklight
apt-get install -y feh gnome-icon-theme-full
apt-get install -y rofi compton
apt-get install -y gnome-terminal
apt-get install -y gedit
apt-get install -y git
apt-get install -y i3 i3-wm i3blocks i3lock i3status i3blocks
apt-get install -y xserver-xorg-video-intel
apt-get install -y cups-common cups-core-drivers cups-daemon
apt-get install -y cups-filters-core-drivers
apt-get install -y printer-driver-brlaser printer-driver-c2esp
apt-get install -y printer-driver-foo2zjs
apt-get install -y printer-driver-foo2zjs-common
apt-get install -y printer-driver-gutenprint
apt-get install -y printer-driver-hpcups
apt-get install -y printer-driver-min12xxw
apt-get install -y printer-driver-pnm2ppa
apt-get install -y printer-driver-postscript-hp
apt-get install -y printer-driver-ptouch printer-driver-pxljr
apt-get install -y printer-driver-sag-gdi printer-driver-splix
apt-get install -y system-config-printer-common
apt-get install -y system-config-printer-gnome
apt-get install -y indicator-printers
apt-get install -y evince evince-common
apt-get install -y libssh-4 libnm-glib-vpn1
apt-get install -y fonts-arphic-ukai fonts-arphic-uming
apt-get install -y fonts-dejavu-core fonts-freefont-ttf
apt-get install -y fonts-guru fonts-guru-extra fonts-kacst
apt-get install -y fonts-kacst-one fonts-khmeros-core
apt-get install -y fonts-liberation fonts-opensymbol
apt-get install -y fonts-nanum fonts-stix fonts-symbola 
apt-get install -y xfonts-base xfonts-encodings
apt-get install -y xfonts-scalable xfonts-utils
apt-get install -y libxfont1 libfont-afm-perl
apt-get install -y libfontconfig1 libfontembed1
apt-get install -y libfontenc1 gnome-font-viewer
apt-get install -y fontconfig fontconfig-config
apt-get install -y dmz-cursor-theme libwayland-cursor0
apt-get install -y libxcursor1 xcursor-themes
apt-get install -y mousetweaks
apt-get install -y update-inetd update-notifier
apt-get install -y update-notifier-common
apt-get install -y usb-creator-common usb-creator-gtk
apt-get install -y gnome-power-manager
apt-get install -y libgsettings-qt1
apt-get install -y libproxy1-plugin-gsettings
apt-get install -y libappindicator3-1
apt-get install -y gir1.2-appindicator3-0.1 gdebi
apt-get install -y caffeine

##### Get and install infinality (better font rendering)
add-apt-repository ppa:no1wantdthisname/ppa -y
apt-get update
apt-get upgrade -y
apt-get install -y fontconfig-infinality

###### Get and install playerctl
wget 'https://github.com/acrisci/playerctl/releases/download/v0.5.0/playerctl-0.5.0_amd64.deb'
dpkg -i playerctl-0.5.0_amd64.deb
rm -rf playerctl-0.5.0_amd64.deb

###### Remove old versions of the Arc theme
rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
rm -rf ~/.local/share/themes/{Arc,Arc-Darker,Arc-Dark}
rm -rf ~/.themes/{Arc,Arc-Darker,Arc-Dark}

###### Get and install the latest Arc theme
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
apt-key add - < Release.key
sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
apt-get update
apt-get install -y arc-theme

###### Make .fonts directory if not already available
mkdir ~/.fonts

###### Get and install San Francisco Font
git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git
cp -v YosemiteSanFranciscoFont/*.ttf ~/.fonts
rm -rf YosemiteSanFranciscoFont

###### Get and install Font Awesome Web Font
git clone https://github.com/FortAwesome/Font-Awesome.git
cp -v Font-Awesome/fonts/*.ttf ~/.fonts
rm -rf Font-Awesome

###### Get and install Moka icon theme
add-apt-repository ppa:moka/daily -y
apt-get update
apt-get install -y moka-icon-theme

###### Make config directories
mkdir ~/.config
mkdir ~/.config/gtk-3.0
mkdir ~/.config/i3

###### Apply GTK theme, fonts, icon theme, login greeter
###### and i3
cp -f ~/i3buntu-master/configs/gtk/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
cp -f ~/i3buntu-master/configs/gtk/.gtkrc-2.0 ~/.gtkrc-2.0
cp -f ~/i3buntu-master/configs/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
cp -f ~/i3buntu-master/configs/i3/config ~/.config/i3/config

###### Progress bar code
for i in `seq 1 100`;
do
    progressbar $i
    sleep 0.1
done

###### Kill the spinner task
kill $pid > /dev/null 2>&1
