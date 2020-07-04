#!/bin/zsh

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install zsh
brew install git
brew install antigen
brew install fasd
brew install mas
brew install midnight-commander
brew install node
brew install yarn

# Remove outdated versions from the cellar
brew cleanup