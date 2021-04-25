#!/bin/sh

# To prevent the Mac workstation from creating .DS_Store files on network shares
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# Disable Font Smoothing
defaults -currentHost write -g AppleFontSmoothing -int 0