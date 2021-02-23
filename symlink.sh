#!/bin/sh

DOTFILE_DIR=$HOME/.dotfiles

ln -sv "$DOTFILE_DIR/zsh/.zshrc" "$HOME/.zshrc"
ln -sv "$DOTFILE_DIR/zsh/.ackrc" "$HOME/.ackrc"
ln -sv "$DOTFILE_DIR/zsh/.antigenrc" "$HOME/.antigenrc"
ln -sv "$DOTFILE_DIR/git/.gitconfig" "$HOME/.gitconfig"
ln -sv "$DOTFILE_DIR/git/.gitconfig-gli" "$HOME/.gitconfig-gli"