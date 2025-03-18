#!/usr/bin/zsh
############################
# install_zim.sh
# This script installs zimfw, if zsh is currently running
############################

if [ -z "$ZSH_NAME" ]; then
  echo "Zsh must be installed and running to use this script."
else
  curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
fi
