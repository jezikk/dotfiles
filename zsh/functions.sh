#!/bin/sh

function csv_clean {
  if [ $# -eq 2 ]; then
    cat $1 | tr -d '\r' > $2
  else
    echo -e "⛔️ Wrong arguments. Must be source and destination file path."
  fi
}

function update_all {
  echo "🍺 Updating homebrew apps...\n"
  brew update; brew upgrade; brew cleanup; brew doctor
  echo "✅ Completed\n"

  echo "🚀 Updating zsh...\n"
  zgen selfupdate
  zgen update
  echo "✅ Completed\n"

  echo "📦 Updating npm global packages...\n"
  npm outdated --global
  npm update -g
  echo "✅ Completed\n"

  # echo "🦀 Updating rust...\n"
  # rustup update stable
  # echo "✅ Completed\n"

  exec $SHELL -l
  echo "\n⚡️ All right! Your computer is up to date.\n"
}