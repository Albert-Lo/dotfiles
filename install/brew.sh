#!/bin/sh

if test ! $(which brew); then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Brewing stuff"

# cli tools
brew install ack
brew install the_silver_searcher
brew install wget
brew install hh

# development tools
brew install git
brew install nginx
brew install macvim --override-system-vim
brew install tmux
brew install zsh
brew install nvm
brew install htop
brew install ngrok
brew install neovim/neovim/neovim
brew install reattach-to-user-namespace
