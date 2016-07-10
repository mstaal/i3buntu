#!/bin/sh

# Setup sources
cp -f sources.list ~/.sources.list
add-apt-repository ppa:moka/daily -y

apt-get update # To get the latest package lists

apt-get install -y moka-icon-theme