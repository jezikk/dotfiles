# Load Antigen
source /usr/local/share/antigen/antigen.zsh

# Exports
export DOTFILES="$HOME/.dotfiles"
export N_PREFIX="$HOME/.nvm"
export PATH="$HOME/.nvm/bin:/usr/local/sbin:$PATH"

# Load Antigen configurations
antigen init $HOME/.antigenrc

# Custom functions
source $DOTFILES/zsh/functions.sh

# Aliases
alias ack.oracle="ack -i --type=oracle"
alias antigen.rebuild="antigen reset"
alias brew.update="brew update; brew upgrade; brew cleanup; brew doctor"
alias dotfiles.config="code ~/.dotfiles"
alias npm.global.list="npm list -g --depth=0"
alias nvm="n"
alias pip="pip3"
alias python="python3"
alias zsh.config="code ~/.zshrc"
alias zsh.reload="source ~/.zshrc"

alias cls="clear"
alias ..="cd .."
alias ....="cd ../.."

# Autocomplete
autoload -Uz compinit && compinit -i

# Case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# Partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix