#!/bin/bash
###
#
# Install script for Ubuntu (16.04)
# 
# History:
#   - 2016/09/09: Copied and modiefied from ceholden
#
###

sudo apt-get install git

# SOURCES
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo add-apt-repository ppa:webupd8team/atom
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update 

# REPO SOFTWARE
sudo apt-get install numix-gtk-theme numix-icon-theme numix-icon-theme-circle
sudo apt-get install unity-tweak-tool
sudo apt-get install libgdal-dev qgis
sudo apt-get install pinta gimp
sudo apt-get install vim
sudo apt-get install r-base
sudo apt-get install remmina
sudo apt-get install zsh
sudo apt install python-lxml python-bs4 #Required for the bing wallpaper thing
sudo apt install python-pip


# LATEX / TEX
sudo apt-get install pandoc texlive-latex-recommended texlive-latex-extra

# GOOGLE
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb
sudo dpkg -i google-earth*.deb
sudo apt-get install -f


# ANACONDA
cd /tmp
wget http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O miniconda.sh
chmod +x miniconda.sh

./miniconda.sh -b
export PATH=$HOME/anaconda/bin:$PATH

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

ln -sf ~/.zshrc ~/dotfiles/zshrc
ln -sf ~/.vimrc ~/dotfiles/vimrc
ln -sf ~/.bashrc ~/dotfiles/bashrc

# Get powerline for vim (could replace it with vim-airline)
pip install --user powerline-status

# Reminder:Manuall change config.json to use default_left if using it for shell

chsh -s /bin/zsh
