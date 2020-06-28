#!/bin/zsh

if test ! $(which sdkman); then
    curl -s "https://get.sdkman.io" | zsh
    source "$HOME/.sdkman/bin/sdkman-init.sh"
fi