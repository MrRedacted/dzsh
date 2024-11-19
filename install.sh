#! /bin/bash

if [ -f "$HOME/.zshrc" ]; then
  mv .zshrc .zshrc.pre_dzsh
fi

wget -O "$HOME/.zshrc" 'https://raw.githubusercontent.com/MrRedacted/dzsh/master/.zshrc' ||
  {
    echo 'Unable to download file'
    rm "$HOME/.zshrc"
    if [ -f "$HOME/.zshrc.pre_dzsh" ]; then
      mv .zshrc.pre_dzsh .zshrc
    fi
    exit 2
  }

echo "Dzsh has successfully been installed! If there was an existing .zshrc file, it has been moved to .zshrc.pre_dzsh"
