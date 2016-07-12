#!/bin/sh

cp wallpaper.jpg ~/.wallpaper.jpg

# Setup sources
cp -f sources.list ~/.sources.list

apt-get update # To get the latest package lists


# First bunch off apps to install
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
