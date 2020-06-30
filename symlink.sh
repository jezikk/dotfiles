#!/bin/zsh

DOTFILE_DIR=$HOME/.dotfiles

ln -sv "$DOTFILE_DIR/zsh/.zshrc" "$HOME/.zshrc"
ln -sv "$DOTFILE_DIR/zsh/.antigenrc" "$HOME/.antigenrc"