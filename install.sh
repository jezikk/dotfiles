#!/bin/sh

echo "💻 Setting up your Mac...\n"

if test ! $(which brew); then
  echo "➡️ Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "✅ Successful installed\n"
fi

echo "➡️ Installing zgen..."
  touch ~/.hushlogin
  git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
echo "✅ Successful installed\n"

echo "➡️ Installing homebrew/app store packages..."
  source ./homebrew/brew.sh
  source ./homebrew/brew-cask.sh
  source ./macos/mas.sh
echo "✅ Successful installed\n"

echo "➡️ Installing npm global packages..."
  source ./npm/install.sh
echo "✅ Successful installed\n"

echo "📁 Activating settings..."
  source ./macos/defaults.sh
echo "✅ Successful created workspaces\n"

echo "🔗 Linking configuration files..."
  source ./symlink.sh
echo "✅ Successful linked configuration files\n"

# Install configurations from zsh
echo "🔧 Setting configuration to iTerm2 and zsh..."
  source $HOME/.zshrc
echo "✅ Successful configured iTerm2 and zsh\n"

echo "⚡️ All right! Restart your machine to complete the configuration."