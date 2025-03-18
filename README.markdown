Dotfiles
========
This repository includes some of my custom dotfiles.  They should be cloned to
your home directory so that the path is `~/dotfiles/`.  The included `makesymlink.sh` 
script creates symlinks for the defined files from your home directory to the files 
which are located in `~/dotfiles/`.

The setup script either moves the file or makes a copy  (if it's a symlink) of any 
dotfile before replacing it. Old files are placed in the `~/dotfiles_old/` directory 
if you already have any dotfiles of the same name as the dotfile symlinks being 
created in your home directory.

If you run the makesymlinks script multiple times (not that you should need to), then 
files are numbered sequentially, e.g. .bashrc, .bashrc-1, .bashrc-2, ...

I also use `zsh` as my shell with zimfw as a plugin manager. The .zshrc and .zshenv 
files will auto install zimfw (with my requested plugins) on the first run.

The ZSH installer is `install_zsh.sh` which will install zsh. It won't set it as a shell,
because you need root to do that for you. 

The Oh-My-Tmux installer is at `install_omt.sh`. Oh-My-Tmux is handy for tmux in the way 
that oh-my-zsh or oh-my-bash are for those shells. Any OMT customizations belong in 
the tmux.conf.local file.


So, to recap, the install script will:

1. Back up any existing dotfiles in your home directory to `~/dotfiles_old/`
2. Create symlinks to the dotfiles in `~/dotfiles/` in your home directory

The next steps are
1. Install (if necesssary) and change the default shell to zsh
2. Install oh-my-tmux.

Installation
------------

```bash
git clone https://github.com/stanlyg/dotfiles.git ~/dotfiles
pushd ~/dotfiles
./makesymlinks.sh
./install_zsh.sh
./install_omt.sh
sudo chsh --shell /bin/zsh
popd
```
