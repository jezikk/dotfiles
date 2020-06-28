#!/bin/zsh

DOTFILE_DIR=$HOME/.dotfiles

ln -sv "$DOTFILE_DIR/sdkman/config" "$HOME/.sdkman/etc/config"
ln -sv "$DOTFILE_DIR/zsh/.zshrc" "$HOME/.zshrc"