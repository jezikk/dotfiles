#!/bin/sh

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# brew install zsh
brew install git
brew install wget
brew install antigen
brew install fasd
brew install ack
brew install mas
brew install node
brew install n
brew install yarn
brew install svn

# https://github.com/vegardinho/alfred_bluetooth_controller
brew install blueutil

# Remove outdated versions from the cellar
brew cleanup