#!/bin/sh

echo "💻 Setting up your Mac...\n"

# Install non-brew various tools (PRE-BREW Installs)
echo "➡️ Ensuring build/install tools are available"
if ! xcode-select --print-path &> /dev/null; then
    # Prompt user to install the XCode Command Line Tools
    xcode-select --install &> /dev/null

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until the XCode Command Line Tools are installed
    until xcode-select --print-path &> /dev/null; do
        sleep 5
    done

    print_result $? ' XCode Command Line Tools Installed'

    # Prompt user to agree to the terms of the Xcode license
    # https://github.com/alrra/dotfiles/issues/10

    sudo xcodebuild -license
    print_result $? 'Agree with the XCode Command Line Tools licence'
fi

if test ! $(which brew); then
  echo "➡️ Installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "✅ Successful installed\n"
fi

echo "➡️ Installing homebrew/app store packages..."
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