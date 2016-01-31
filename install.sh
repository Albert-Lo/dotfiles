#!/bin/bash

echo "Installing Bert's environments"

echo "Initializing submodule(s)"
git submodule update --init --recursive

source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
  echo "Running on OSX"

  echo "Brewing all the things"
  source install/brew.sh

  echo "Installing node (from nvm)"
  source install/nvm.sh
fi

echo "creating vim directories"
mkdir -p ~/.vim-tmp


echo "Configuring zsh as default shell"
chsh -s $(which zsh)

echo "Done."