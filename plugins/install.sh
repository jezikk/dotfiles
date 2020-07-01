#!/bin/zsh

PLUGINS_DIR=$HOME/.plugins

mkdir $PLUGINS_DIR

echo "💡 Downloading Dracula theme for iTerm2..."
git clone https://github.com/dracula/iterm.git $PLUGINS_DIR/dracula-iterm
echo "✅ Completed\n"