#!/bin/bash
###
#
# Install script for Ubuntu (18.04.4)
# 
#
###

#sudo apt install git

# SOURCES
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo add-apt-repository -y ppa:rael-gc/rvm
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt update 

# REPO SOFTWARE
sudo apt install python-pip
sudo apt install software-properties-common
#sudo apt install numix-gtk-theme numix-icon-theme numix-icon-theme-circle
sudo apt install qgis qgis-plugin-grass
sudo apt install pinta gimp
sudo apt remove --assume-yes vim-tiny
sudo apt install vim
sudo apt install r-base
sudo apt install remmina
sudo apt install zsh
sudo apt install rvm
# Extra packages are for thinkpads only
sudo apt install tlp tlp-smapi-dkms acpi-call-dkms
sudo apt install gdebi-core wget
sudo apt install libreoffice


# LATEX / TEX
#sudo apt install pandoc texlive-latex-recommended texlive-latex-extra

# Skype
cd /tmp
wget https://go.skype.com/skypeforlinux-64.deb
sudo gdebi skypeforlinux-64.deb

# GOOGLE EARTH
wget https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb
sudo gdebi google-earth-pro-stable_current_amd64.deb 

# SLACK
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.3.2-amd64.deb
sudo gdebi slack-desktop-4.3.2-amd64.deb

# SPOTIFY
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get install spotify-client

# MINICONDA
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
chmod +x miniconda.sh
./miniconda.sh -b -p $HOME/miniconda

# MISC CONFIG
# Generate Latin American keyboard layout
sudo locale-gen es_CO.UTF-8

# REPOS
if [ ! -d $HOME/repos ]; then
    mkdir $HOME/repos
fi
cd $HOME/repos

git clone https://github.com/powerline/fonts.git
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# SET ZSH AND STUFF
./fonts/install.sh

ln -sf ~/repos/dotfiles/zshrc ~/.zshrc
ln -sf ~/repos/dotfiles/vimrc ~/.vimrc
ln -sf ~/repos/dotfiles/bashrc ~/.bashrc

# Reminder:Manuall change config.json to use default_left if using it for shell

chsh -s /bin/zsh
