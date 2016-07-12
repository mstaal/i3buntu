#!/bin/sh

cp wallpaper.jpg ~/.wallpaper.jpg

# Setup sources
cp -f sources.list ~/.sources.list

apt-get update # To get the latest package lists


# First bunch off apps to install
<<<<<<< HEAD
apt-get install -y  ubuntu-drivers-common \
                    ubuntu-docs \
                    ttf-ubuntu-font-family \
                    libnm-gtk-common \
                    ubuntu-wallpapers ubuntu-wallpapers-xenial \
                    openssh-client \
                    libstartup-notification0 upstart \
                    evince evince-common \
                    lightdm \
                    antoconf automake \
                    x11-xserver-utils \
                    arandr \
                    pavucontrol \
                    dconf \
                    dconf-tools dconf-editor-dbg \
                    lxappearance \
                    policykit-1 policykit-1-gnome \
                    policykit-desktop-privileges \
                    libpolkit-agent-1-0 libpolkit-backend-1-0 \
                    libpolkit-gobject-1-0 \
                    vim vim-common \
                    thunar \
                    gnome-system-monitor \
                    gnome-system-tools \
                    network-manager \
                    network-manager-gnome \
                    network-manager-openvpn \
                    network-manager-openvpn-gnome \
                    lightdm-gtk-greeter \
                    lightdm-gtk-greeter-settings \
                    overlay-scrollbar overlay-scrollbar-gtk2 \
                    brasero \
                    gnome-bluetooth \
                    libbluetooth3 \
                    libgnome-bluetooth13 \
                    pulseaudio pulseaudio-module-bluetooth \
                    pulseaudio-module-x11 pulseaudio-utils \
                    pactl xbacklight \
                    feh gnome-icon-theme-full \
                    rofi compton \
                    gnome-terminal \
                    gedit \
                    git \
                    i3 i3-wm i3blocks i3lock i3status i3blocks \
                    xserver-xorg-video-intel \
                    cups-common cups-core-drivers cups-daemon \
                    cups-filters-core-drivers \
                    printer-driver-brlaser printer-driver-c2esp \
                    printer-driver-foo2zjs \
                    printer-driver-foo2zjs-common \
                    printer-driver-gutenprint printer-driver-hpcups \
                    printer-driver-min12xxw printer-driver-pnm2ppa \
                    printer-driver-postscript-hp \
                    printer-driver-ptouch printer-driver-pxljr \
                    printer-driver-sag-gdi printer-driver-splix \
                    system-config-printer-common \
                    system-config-printer-gnome indicator-printers \
                    evince evince-common \
                    libssh-4 libnm-glib-vpn1 \
                    xfonts-base xfonts-encodings xfonts-scalable \
                    xfonts-utils libxfont1 libfont-afm-perl \
                    libfontconfig1 libfontembed1 libfontenc1 \
                    gnome-font-viewer fontconfig fontconfig-config \
                    dmz-cursor-theme libwayland-cursor0 \
                    libxcursor1 xcursor-themes \
                    mousetweaks \
                    update-inetd update-notifier \
                    update-notifier-common \
                    usb-creator-common usb-creator-gtk \
                    gnome-power-manager \
                    wireless-tools \
                    libgsettings-qt1 libproxy1-plugin-gsettings \
                    libappindicator3-1 gir1.2-appindicator3-0.1 \
                    gdebi caffeine
=======
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
apt-get install -y dconf
apt-get install -y dconf-tools
apt-get install -y lxappearance
apt-get install -y policykit-1 policykit-1-gnome
apt-get install -y vim
apt-get install -y thunar
apt-get install -y gnome-system-monitor
apt-get install -y gnome-system-tools
apt-get install -y network-manager
apt-get install -y network-manager-gnome
apt-get install -y network-manager-openvpn
apt-get install -y network-manager-openvpn-gnome
apt-get install -y lightdm-gtk-greeter
apt-get install -y lightdm-gtk-greeter-settings
apt-get install -y overlay-scrollbar overlay-scrollbar-gtk2
apt-get install -y brasero
apt-get install -y gnome-bluetooth
apt-get install -y libbluetooth3
apt-get install -y libgnome-bluetooth13
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
apt-get install -y i3 i3-wm i3blocks i3lock i3status i3blocks
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
apt-get install -y xfonts-base
apt-get install -y xfonts-encodings
apt-get install -y xfonts-scalable
apt-get install -y xfonts-utils
apt-get install -y libxfont1
apt-get install -y libfont-afm-perl
apt-get install -y libfontconfig1
apt-get install -y libfontembed1
apt-get install -y libfontenc1
apt-get install -y gnome-font-viewer
apt-get install -y fontconfig
apt-get install -y fontconfig-config
apt-get install -y dmz-cursor-theme
apt-get install -y libwayland-cursor0
apt-get install -y libxcursor1
apt-get install -y xcursor-themes
apt-get install -y mousetweaks
apt-get install -y update-inetd
apt-get install -y update-notifier
apt-get install -y update-notifier-common
apt-get install -y usb-creator-common
apt-get install -y usb-creator-gtk
apt-get install -y vim-common
apt-get install -y gnome-power-manager
apt-get install -y gnome-font-viewer
apt-get install -y wireless-tools
apt-get install -y libgsettings-qt1
apt-get install -y libproxy1-plugin-gsettings


# Caffeine
apt-get install -y libappindicator3-1 gir1.2-appindicator3-0.1 gdebi
apt-get install -y caffeine

>>>>>>> parent of d4712b2... Add extra policykit to install.sh

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

# Download fonts
echo "Get fonts"
git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git
cp -v YosemiteSanFranciscoFont/*.ttf ~/.fonts
rm -rf YosemiteSanFranciscoFont

git clone https://github.com/FortAwesome/Font-Awesome.git
cp -v Font-Awesome/fonts/*.ttf ~/.fonts
rm -rf Font-Awesome

# Download and install Moka icons
add-apt-repository ppa:moka/daily -y
apt-get update
apt-get install -y moka-icon-theme


mkdir ~/.config
mkdir ~/.config/gtk-3.0
mkdir ~/.config/i3

# Set GTK theme, fonts, icon theme, login greeter and i3
echo "Set theme, fonts and icon theme"
cp -f ~/i3buntu-master/configs/gtk/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
cp -f ~/i3buntu-master/configs/gtk/.gtkrc-2.0 ~/.gtkrc-2.0
cp -f ~/i3buntu-master/configs/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
cp -f ~/i3buntu-master/configs/i3/config ~/.config/i3/config

# Texlive - this will take time...
# apt-get install -y texlive
