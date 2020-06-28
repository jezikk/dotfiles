#!/bin/zsh

echo "🔧 Setting up your Mac..."

# Install non-brew various tools (PRE-BREW Installs)
echo "Ensuring build/install tools are available"
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
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if test ! $(which zsh); then
	curl https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | zsh
fi

echo "📲 Installing homebrew/app store packages..."
sh ./homebrew/brew.sh
sh ./homebrew/brew_cask.sh
sh ./macos/app_store.sh
echo "✅ Successful installed packages"

echo "🔧 Installing npm global packages..."
sh ./npm/global.sh
echo "✅ Successful installed packages"

echo "🔧 Installing antibody packages..."
antibody bundle < ./zsh/.zsh_plugins.list > ~/.zsh_plugins.sh
echo "✅ Successful installed packages"

echo "🔧 Installing sdkman..."
sh ./sdkman/install.sh
echo "✅ Successful installed"

echo "📁 Creating workspaces directories..."
sh ./macos/create_workspace.sh
echo "✅ Successful created workspaces"

echo "🔗 Linking configuration files..."
sh ./symlink.sh
echo "✅ Successful linked configuration files"

# Install configurations from zsh
echo "🔧 Setting configuration to iTerm2 and zsh..."
source $HOME/.zshrc
echo "✅ Successful configured iTerm2 and zsh"


echo "⚡️ All right! Restart your machine to complete the configuration."