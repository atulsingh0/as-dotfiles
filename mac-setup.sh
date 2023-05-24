#!/bin/sh

# install xcode CLI
if command -v xcode-select; then
    echo "Installing xcode-selct..."
    xcode-select --install
fi

# Check for Homebrew to be present, install if it's missing
if command -v brew; then
    echo "Installing homebrew..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# list of files/folders to symlink in ${homedir}
files="zprofile zshrc"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks and overwrite old dotfiles
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done

# Installting Mac tools/cLIs
echo "Brew install from bundle file..."
brew bundle install --file=Brewfile
