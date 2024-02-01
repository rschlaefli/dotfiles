# homebrew path setup
export PATH="/Users/roland/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"

# source antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
export ANTIDOTE_HOME=~/.cache/antidote
antidote load

# pyenv setup
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# volta setup
export VOLTA_HOME="$HOME/.volta"
export VOLTA_FEATURE_PNPM=1
export PATH="$VOLTA_HOME/bin:$PATH"

export PATH="/usr/local/opt/libpq/bin:$PATH"

# asdf setup
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# homeshick setup for dotfiles management
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)
homeshick --quiet refresh

# aliases
alias k=kubectl
alias pn=pnpm

# warp subshell setup
printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh" }}\x9c'

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/rolandschlaefli/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
