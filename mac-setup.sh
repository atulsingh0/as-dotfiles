#!/bin/sh

# install xcode CLI
xcode-select --install

# Check for Homebrew to be present, install if it's missing
if command -v brew; then
    echo "Installing homebrew..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Brew install from bundle file..."
brew bundle install --file=Brewfile
