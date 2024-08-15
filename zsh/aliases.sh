#!/bin/sh

alias ack.oracle="ack -i --type=oracle"
alias brew.update="brew update; brew upgrade; brew cleanup; brew doctor"
alias dns.config="scutil --dns"
alias dotfiles.config="code ~/.dotfiles"
alias npm.global.list="npm list -g --depth=0"
alias zsh.config="code ~/.zshrc"
alias zsh.reload="exec $SHELL -l"
alias zgen.reset="zgen reset"
alias zgen.update="zgen update"

alias t="tmux"
alias ta="t attach -t"
alias tls="t ls"
alias tn="t new -s"
alias trn="t rename-session"

alias vim="nvim"
alias ls="eza --icons"
alias la="eza -la --header --icons"

alias dcd="docker compose down"
alias dcu="docker compose up -d"
alias dcub="docker compose up -d --build"

alias gs="git status"
alias gsb="git status --short --branch"
alias ga="git add"
alias gaa="git add --all; git status -s"
alias gcm="git commit --message"
alias grm='git rm'
alias grmc='git rm --cached'
alias gp='git push -u'
alias gl="git log --all --pretty='%C(Yellow)%h  %C(reset)%ad (%C(Green)%cr%C(reset))%x09 %C(Cyan)%an%C(reset)%x09 %C(red)%d %C(reset)%s' --date=short"
alias gb="git checkout"
alias gbc="git checkout -b"
alias gbd="git branch -D"
alias gbl="git branch --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate"
alias gu="git pull"
alias gur="git pull --rebase"
alias gum="git pull --merge"
alias gf="git fetch"
alias gfs="git fetch; git status"
alias gfl="git fetch; git --no-pager log --all --pretty='%C(Yellow)%h  %C(reset)%ad (%C(Green)%cr%C(reset))%x09 %C(Cyan)%an%C(reset)%x09 %C(red)%d %C(reset)%s' --date=short -20"

alias cls="clear"
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."