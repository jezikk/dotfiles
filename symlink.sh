#!/bin/zsh

DOTFILE_DIR=$HOME/.dotfiles

ln -svf "$DOTFILE_DIR/sdkman/config" "$HOME/.sdkman/etc/config"
ln -svf "$DOTFILE_DIR/zsh/.zshrc" "$HOME/.zshrc"