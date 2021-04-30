#!/bin/sh

echo "💻 Setting up your Mac...\n"

if test ! $(which brew); then
  echo "➡️ Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "✅ Successful installed\n"
fi

echo "➡️ Installing homebrew/app store packages..."
touch ~/.hushlogin
sh ./homebrew/brew.sh
sh ./homebrew/brew-cask.sh
sh ./macos/mas.sh
echo "✅ Successful installed\n"

echo "➡️ Installing npm global packages..."
sh ./npm/install.sh
echo "✅ Successful installed\n"

echo "📁 Activating settings..."
sh ./macos/defaults.sh
echo "✅ Successful created workspaces\n"

echo "🔗 Linking configuration files..."
sh ./symlink.sh
echo "✅ Successful linked configuration files\n"

# Install configurations from zsh
echo "🔧 Setting configuration to iTerm2 and zsh..."
source $HOME/.zshrc
echo "✅ Successful configured iTerm2 and zsh\n"

echo "⚡️ All right! Restart your machine to complete the configuration."