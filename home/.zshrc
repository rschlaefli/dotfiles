# ----- PATH -----
# region homebrew

# homebrew path setup
export PATH="/Users/roland/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"

# volta
export VOLTA_HOME="$HOME/.volta"
export VOLTA_FEATURE_PNPM=1
export PATH="$VOLTA_HOME/bin:$PATH"

# postgres tools
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/Cellar/libpq/16.2/bin/:$PATH"

# endregion

# ----- TOOLS -----
# region tools

# source antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
export ANTIDOTE_HOME=~/.cache/antidote
antidote load

# homeshick setup for dotfiles management
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)
homeshick --quiet refresh

# warp subshell setup
printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh" }}\x9c'

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/roland/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# asdf setup
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# endregion

# ----- COMPLETIONS -----
# region completions

eval "$(rbenv init - zsh)"
source <(av completion zsh)
source <(kubectl completion zsh)

# endregion

# ----- ALIASES -----
# region aliases

alias k=kubectl
alias pn=pnpm

# endregion
