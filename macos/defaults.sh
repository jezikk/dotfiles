#!/bin/sh

## macOS

# Tvoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Disable Font Smoothing
defaults -currentHost write -g AppleFontSmoothing -int 0

# Set the Scale Effect to Minimize Windows
defaults write com.apple.dock mineffect -string scale

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

## Finder

# Show file extensions 
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

## iTerm

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false