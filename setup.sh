#!/bin/bash

brew install --cask iterm2
brew install --cask visual-studio-code
brew install tree
brew install tmux
brew install nmap
brew install wget
brew install grep
brew install colima
brew install docker
brew install git
brew install python3
brew install bat

# Github Downloads
mkdir github
cd github
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/dracula/iterm.git
cd ..
mv .vimrc ..
mv .zshrc ..
source .zshrc
