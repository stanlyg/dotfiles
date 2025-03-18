#!/bin/zsh
############################
# install_omz.sh
# This script installs oh_my_zshell, if zsh is installed
############################
# Test to see if zshell is installed.  If it is:
if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
  # Clone my oh-my-zsh repository from GitHub only if it isn't already present
  if [[ ! -d $dir/oh-my-zsh/ ]]; then
    git clone https://github.com/robbyrussell/oh-my-zsh.git
  fi
  # Set the default shell to zsh if it isn't currently set to zsh
  if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
    chsh -s $(which zsh)
  fi
else
  echo "Please install zsh first, and rerun this setup."
fi
