#!/bin/sh

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

  echo "🧭 Updating apple store apps..."
  mas upgrade
  echo "✅ Completed\n"

  echo "⚡️ All right! Your computer is up to date."
}

function create_repo {
  if test ! $(which git); then
    echo -e "⛔️ git must be installed"
    return
  fi

  if [ $# -lt 2 ] || [ $# -gt 3 ]; then
    echo -e "⛔️ Wrong arguments"
    return
  fi

  local REPO=$1
  local FOLDER_NAME=$2
  local PROJECT_NAME=$FOLDER_NAME

  if [ $# -eq 3 ]; then
    PROJECT_NAME=$3
  fi

  # Repos logic
  if [ $REPO = "next" ]; then
    if test ! $(which node); then
      echo -e "⛔️ NodeJS must be installed"
      return
    fi

    if test ! $(which yarn); then
      echo -e "⛔️ yarn must be installed"
      return
    fi

    echo -e "\n🧲 Downloading template repository...\n"
    git clone --depth 1 -b main https://github.com/jezikk/next-tailwind-starter.git $FOLDER_NAME
    cd $FOLDER_NAME
    rm -rf .git
    rm -f yarn.lock
    git init

    echo -e "\n🔧 Setting package.json:\n"
    node -p "JSON.stringify({...require('./package.json'), name: '$PROJECT_NAME'}, null, 2)"

    echo -e "\n📦 Downloading packages...\n"
    yarn install
    cd ..

    echo -e "\n✅ Completed!"
  else
    echo -e "⛔️ Unsupported repository name"
  fi
}