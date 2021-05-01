# Exports
export DOTFILES="$HOME/.dotfiles"
export N_PREFIX="$HOME/.nvm"
export PATH="$HOME/.nvm/bin:/usr/local/sbin:$PATH"

# Load zgen
source "${HOME}/.zgen/zgen.zsh"

# Load custom functions
source $DOTFILES/zsh/functions.sh

# Load aliases
source $DOTFILES/zsh/aliases.sh

# if the init script doesn't exist
if ! zgen saved; then

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/fasd

    zgen load zsh-users/zsh-completions
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-syntax-highlighting

    zgen load denysdovhan/spaceship-prompt

    # generate the init script from plugins above
    zgen save
fi

# Case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# Partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# Load secret things
[ -f ~/.localrc ] && . ~/.localrc