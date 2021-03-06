#!/usr/bin/env bash
set -e
# PLEASE ENABLE THIS IF YOU WANT ZSH IN THE UBUNTU.JSON
echo "Configuring ZSH..."
apt-get purge -y update-notifier-common
apt-get install -y update-notifier-common
apt-get install -y git zsh
if [ ! -d ~$USER_FOLDER/.oh-my-zsh ]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~$USER_FOLDER/.oh-my-zsh
fi

chsh -s /usr/bin/zsh $USER_FOLDER
