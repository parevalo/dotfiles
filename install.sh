#!/bin/bash
###
#
# Install script for WSL1
# 
#
###

sudo apt install git

# REPO SOFTWARE
sudo apt install python-pip
sudo apt remove --assume-yes vim-tiny
sudo apt install vim
sudo apt install zsh

# MINICONDA
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
chmod +x miniconda.sh
./miniconda.sh -b -p $HOME/miniconda

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

chsh -s /bin/zsh

# Add this to bashrc to launch zsh automatically
#if [ -t 1 ]; then
#exec zsh
#fi
