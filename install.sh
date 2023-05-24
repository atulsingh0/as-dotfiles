#!/bin/sh

# Setup script for setting up a new macos/linux machine
echo "Starting setup"

if [ "$#" -ne 2 ]; then
    echo "$(tput setaf 228)Enter your macOS home directory (usually: /Users/username)$(tput sgr0)"
    read -p "Enter your home directory: " user_homedir
    echo -e "\n"
    echo "$(tput setaf 228)Enter the relative path to your dotfiles directory $(tput sgr0)"
    echo "$(tput setaf 228)Example: if the full path is $(tput setaf 15)'/Users/username/dotfiles'$(tput setaf 228), type $(tput setaf 15)'dotfiles'$(tput sgr0)"
    echo "$(tput setaf 228)(defaults to current directory if empty)$(tput sgr0)"
    read -p "Enter the relative path to your dotfiles directory: " user_dotfiles_dir
    if [ -z "$user_dotfiles_dir" ]; then
        absolute_curr=$PWD
        user_dotfiles_dir=${absolute_curr#$user_homedir}
    fi
else
    user_homedir=$1
    user_dotfiles_dir=$2
fi

export homedir=$user_homedir

# dotfiles directory
export dotfiledir=${homedir}/${user_dotfiles_dir}



# Setting up OH-MY-ALIASES
git clone https://github.com/atulsingh0/oh-my-aliases.git ~/.ohmyaliases

# Add below line in your bashrc/zshrs/kshrc file
source ~/.ohmyaliases/source_aliases.sh

# Setting Up MAC
if [ "$(uname)" = "Darwin" ]; then
    echo "Detecting MacOS"
    # calling macos script
    sh mac-setup.sh
fi
