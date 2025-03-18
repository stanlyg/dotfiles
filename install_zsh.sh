#!/bin/bash
############################
# install_zsh.sh
# This script installs zsh, if it's not already installed
############################
install_zsh () {
  # Test to see if zshell is installed.  If it is:
  if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    echo "Zsh seems to already be installed."
  else
    # If zsh isn't installed, get the platform of the current machine
    platform=$(uname);
    # If the platform is Linux, try an apt-get to install zsh and then recurse
    if [[ $platform == 'Linux' ]]; then
      if [ $(grep -c debian /etc/os-release) -gt 0 ]; then 
        # Debian/Ubuntu based, use apt
        sudo apt-get install zsh zsh_common zsh_doc
      elif [ $(grep -c rhel /etc/os-release) -gt 0 ]; then 
        # Redhat/Centos based, use yum 
        sudo yum install zsh
        install_zsh
      else 
        echo "Unable to detect type of Linux. Doesn't look like Debian or Redhat."
        echo "Please install zsh manually, and rerun this setup."
        exit
      fi
      # If the platform is OS X, tell the user to install zsh :)
    elif [[ $platform == 'Darwin' ]]; then
      echo "You must be running a really old version of MacOS -- ZSH is normally installed by default."
      echo "Please install zsh, then re-run this script!"
      exit
    fi
  fi
}

install_zsh
