#!/bin/zsh

function update_zsh_custom_plugins {
    for plugin in ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/*/; do
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

  echo "📦 Updating ohmyzsh..."
  upgrade_oh_my_zsh
  echo "✅ Completed\n"

  echo "📦 Updating ohmyzsh custom plugins..."
  update_zsh_custom_plugins
  echo "✅ Completed\n"

  echo "📦 Updating npm global packages..."
  npm update -g
  echo "✅ Completed\n"

  echo "📦 Updating sdkman..."
  sdk update; sdk selfupdate; sdk flush temp
  echo "✅ Completed\n"

  echo "⚡️ All right! Your computer is up to date."
}