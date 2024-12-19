#!/bin/sh

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install ack
brew install curl
brew install deno
brew install eza
brew install fzf
brew install git
brew install jq
brew install lazygit
brew install n
brew install node
brew install php
brew install pnpm
brew install sponge
brew install starship
brew install subversion
brew install wget
brew install zsh

#brew install ffmpeg
#brew install youtube-dl
#brew install blackhole-2ch

# oracle
#brew tap InstantClientTap/instantclient
#brew install instantclient-basic
#brew install instantclient-sqlplus
#brew install instantclient-tools

# Remove outdated versions from the cellar
brew cleanup