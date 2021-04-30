# Exports
export DOTFILES="$HOME/.dotfiles"
export N_PREFIX="$HOME/.nvm"
export PATH="$HOME/.nvm/bin:/usr/local/sbin:$PATH"

# Load custom functions
source $DOTFILES/zsh/functions.sh

# Load aliases
source $DOTFILES/zsh/aliases.sh

# Load antibody plugins
source ~/.zsh_plugins.sh

# Autocomplete
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

# Load completion after autocomplete loads
source $DOTFILES/zsh/completion.sh

# Load secret things
[ -f ~/.localrc ] && . ~/.localrc