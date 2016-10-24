#!/bin/bash
###
#
# Install script for Ubuntu (16.04)
# 
# History:
#   - 2016/09/09: Copied and modiefied from ceholden
#
###

sudo apt install git

# SOURCES
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo add-apt-repository ppa:webupd8team/atom
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo add-apt-repository ppa:mystic-mirage/pycharm
sudo add-apt-repository ppa:caffeine-developers/ppa
sudo apt update 

# REPO SOFTWARE
sudo apt install numix-gtk-theme numix-icon-theme numix-icon-theme-circle
sudo apt install unity-tweak-tool
sudo apt install indicator-multiload
sudo apt install libgdal-dev qgis
sudo apt install pinta gimp
sudo apt install vim
sudo apt install r-base
sudo apt install remmina
sudo apt install pycharm-community
sudo apt install zsh
sudo apt install python-lxml python-bs4 #Required for the bing wallpaper thing
sudo apt install python-pip
sudo apt install caffeine


# LATEX / TEX
sudo apt install pandoc texlive-latex-recommended texlive-latex-extra

# GOOGLE
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb
sudo dpkg -i google-earth*.deb
sudo apt install -f


# ANACONDA
cd /tmp
wget http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
chmod +x miniconda.sh

./miniconda.sh -b
export PATH=$HOME/miniconda3/bin:$PATH

# REPOS
if [ ! -d $HOME/Documents ]; then
    mkdir $HOME/Documents
fi
cd $HOME/Documents

git clone https://github.com/UtkarshGpta/bing-desktop-wallpaper-changer.git
git clone https://github.com/powerline/fonts.git
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# SET ZSH AND STUFF
./fonts/install.sh

ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/bashrc ~/.bashrc

# Get powerline for vim (could replace it with vim-airline)
pip install --user powerline-status

# Reminder:Manuall change config.json to use default_left if using it for shell

chsh -s /bin/zsh
