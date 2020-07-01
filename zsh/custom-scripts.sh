#!/bin/zsh

PLUGINS_DIR=$HOME/.plugins

function update_ext_plugins {
    for plugin in $PLUGINS_DIR/*/; do
      if [ -d "$plugin/.git" ]; then
         printf "${YELLOW}%s${RESET}\n" "${plugin%/}"
         git -C "$plugin" pull --rebase --stat origin master
         printf "\n"
      fi
    done
}

function update_all {
  echo "📦 Updating homebrew apps..."
  brew update; brew upgrade; brew cleanup; brew doctor
  echo "✅ Completed\n"

  echo "📦 Updating zsh..."
  antigen update
  echo "✅ Completed\n"

  echo "📦 Updating npm global packages..."
  npm update -g
  echo "✅ Completed\n"

  echo "🧲 Updating external repos..."
  update_ext_plugins
  echo "✅ Completed\n"

  echo "⚡️ All right! Your computer is up to date."
}