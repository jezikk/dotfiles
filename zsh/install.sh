#!/bin/zsh

echo "🛠 Installing oh-my-zsh..."
curl https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | zsh
echo "✔️ Completed\n"

echo "📦 Installing oh-my-zsh custom plugins..."
sh ./install_plugins.sh
echo "✔️ Completed\n"
