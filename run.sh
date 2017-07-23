#!/bin/bash

# Install e-macs 25
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt-get update
sudo apt-get install emacs25

# Install Cask
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh
echo "source $HOME/.bashrc" | sudo tee --append .bash_profile

# Install Cask
curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python3
echo 'export PATH=$HOME/.cask/bin:$PATH"' | sudo tee --append .bash_profileA
