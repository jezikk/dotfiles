#!/bin/zsh

packageList=(
formulahendry.auto-rename-tag
chunsen.bracket-select
msjsdiag.debugger-for-chrome
ms-azuretools.vscode-docker
mikestead.dotenv
dracula-theme.theme-dracula
geeebe.duplicate
dbaeumer.vscode-eslint
sleistner.vscode-fileutils
mkxml.vscode-filesize
tombonnike.vscode-status-bar-format-toggle
mhutchie.git-graph
github.vscode-pull-request-github
eamodio.gitlens
heybourn.headwind
bradgashler.htmltagwrap
xabikos.javascriptsnippets
xyz.plsql-language
pkief.material-icon-theme
william-voyek.vscode-nginx
christian-kohler.npm-intellisense
christian-kohler.path-intellisense
bmewburn.vscode-intelephense-client
esbenp.prettier-vscode
prisma.prisma
alefragnani.project-manager
humao.rest-client
robinbentley.sass-indented
jock.svg
bradlc.vscode-tailwindcss
visualstudioexptteam.vscodeintellicode
dotjoshjohnson.xml
)

for package in ${packageList[@]}; do
  code --install-extension $package
done