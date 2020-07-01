#!/bin/zsh

DOTFILE_DIR=$HOME/.dotfiles

ln -sv "$DOTFILE_DIR/zsh/.zshrc" "$HOME/.zshrc"
ln -sv "$DOTFILE_DIR/zsh/.antigenrc" "$HOME/.antigenrc"
ln -svf "$DOTFILE_DIR/vscode/settings.json" ~/Library/Application\ Support/Code/User/settings.json