# Load Antigen
source /usr/local/share/antigen/antigen.zsh

# Exports
export DOTFILES="$HOME/.dotfiles"
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Load Antigen configurations
antigen init $HOME/.antigenrc

# External scripts
source $DOTFILES/zsh/custom-scripts.sh

# Aliases
alias antigen.rebuild="antigen reset"
alias brew.update="brew update; brew upgrade; brew cleanup; brew doctor"
alias dotfiles.config="code ~/.dotfiles"
alias zsh.config="code ~/.zshrc"
alias zsh.reload="source ~/.zshrc"

alias cls="clear"
alias ..="cd .."
alias ....="cd ../.."

alias npm.global.list="npm list -g --depth=0"

# Autocomplete
autoload -Uz compinit && compinit -i

# Case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# Partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix