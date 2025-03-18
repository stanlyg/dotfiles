##############################################################################
#   Filename: .bashrc                                                        #
# Maintainer: Michael J. Smalley <michaeljsmalley@gmail.com>                 #
#        URL: http://github.com/michaeljsmalley/dotfiles                     #
#                                                                            #
#                                                                            #
# Sections:                                                                  #
#   01. General ................. General Bash behavior                      #
#   02. Aliases ................. Aliases                                    #
#   03. Theme/Colors ............ Colors, prompts, fonts, etc.               #
##############################################################################

##############################################################################
# 01. General                                                                #
##############################################################################
# Shell prompt
export PS1='\n\[\e[36m\][\[\e[33;1m\]\u\[\e[36m\] @ \[\e[33m\]\h\[\e[0;36m\]]─[\[\e[34;1m\]\w\[\e[0;36m\]]─[\[\e[31m\]\t\[\e[36m\]]\n\[\e[37;1m\]\$\[\e[0;36m\]› \[\e[0m\]'

# If fortune is installed, run a fortune
if [ -e /opt/local/bin/fortune ]; then
    fortune -so
    echo " "
fi

##############################################################################
# 02. Aliases                                                                #
##############################################################################
# Enable colors in "ls" command output
alias ls="ls -Glah"

##############################################################################
# 03. Theme/Colors                                                           #
##############################################################################
# CLI Colors
export CLICOLOR=1
# Set "ls" colors
export LSCOLORS=Gxfxcxdxbxegedabagacad

