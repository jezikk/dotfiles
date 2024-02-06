# Environment
DISABLE_AUTO_UPDATE=true

# Exports
export DOTFILES="$HOME/.dotfiles"
export N_PREFIX="$HOME/.nvm"
export PATH="$HOME/.nvm/bin:/opt/homebrew/bin:$PATH"
export TNS_ADMIN="$HOME/Oracle/network/admin"

export SVN_EDITOR=vim

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
    zgen oh-my-zsh plugins/z
    zgen oh-my-zsh plugins/docker

    # https://www.gitmemory.com/issue/zsh-users/zsh-completions/809/883481012
    zgen load zsh-users/zsh-completions src
    zgen load zsh-users/zsh-autosuggestions

    # Theme
    #zgen load denysdovhan/spaceship-prompt

    # Last
    zgen load zsh-users/zsh-syntax-highlighting
    # zgen load zsh-users/zsh-history-substring-search

    # generate the init script from plugins above
    zgen save
fi

#bindkey '^[^[[A' history-substring-search-up
#bindkey '^[^[[B' history-substring-search-down

# Starship Theme
eval "$(starship init zsh)"

# Load secret things
[ -f ~/.localrc ] && . ~/.localrc

# brew
# alias brew='sudo -Hu jezikk brew'

