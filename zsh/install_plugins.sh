#!/bin/zsh

echo "📦 Installing zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "✔️ Completed\n"

echo "📦 Installing zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "✔️ Completed\n"

echo "🚀 Installing spaceship theme..."
git clone https://github.com/denysdovhan/spaceship-prompt.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/spaceship-prompt
ln -sv "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/spaceship-prompt/spaceship.zsh-theme" "$ZSH/themes/spaceship.zsh-theme"
echo "✔️ Completed\n"