#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc tmux.conf.local vimrc vim zshrc zshenv zimrc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
  number=0
  if [ -L ~/.$file ] ; then
    fname=".$file"
    while [ -e ~/dotfiles_old/$fname ]; do
      printf -v fname '%s-%d' ".$file" "$(( ++number ))"
    done
    echo -n "Copying "
    cp -Lrv ~/.$file ~/dotfiles_old/$fname
    rm -v ~/.$file

  elif [ -f ~/.$file -o -d ~/.$file ]; then
    fname=".$file"
    while [ -e ~/dotfiles_old/$fname ]; do
      printf -v fname '%s-%d' ".$file" "$(( ++number ))"
    done
    mv -v ~/.$file ~/dotfiles_old/$fname
  #fi
  fi
  echo -n "Linking "
  ln -vs $dir/$file ~/.$file
  echo "-------"
done
