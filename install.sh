#!/bin/sh

echo "💻 Setting up your Mac...\n"

if test ! $(which brew); then
  echo "➡️ Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "✅ Successful installed\n"
fi

echo "📦 Installing applications..."
  source ./homebrew/brew.sh
  source ./homebrew/brew-cask.sh
echo "✅ Successful installed\n"

echo "➡️ Installing zgen..."
  git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
echo "✅ Successful installed\n"

echo "📦 Installing npm global packages..."
  source ./npm/install.sh
echo "✅ Successful installed\n"

echo "🔗 Linking configuration files..."
  mkdir $HOME/.config
  source ./symlink.sh
echo "✅ Successful installed\n"

echo "🔧 Setting configuration to zsh..."
  source $HOME/.zshrc
echo "✅ Successful installed\n"

echo "⚡️ All right! Restart your machine to complete the configuration.\n"