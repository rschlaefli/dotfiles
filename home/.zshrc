# homebrew path setup
# export PATH="/Users/roland/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"

# source antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
export ANTIDOTE_HOME=~/.cache/antidote
antidote load

# volta setup
export VOLTA_HOME="$HOME/.volta"
export VOLTA_FEATURE_PNPM=1
export PATH="$VOLTA_HOME/bin:$PATH"

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

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Added by Windsurf
export PATH="/Users/rolandschlaefli/.codeium/windsurf/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/rolandschlaefli/.lmstudio/bin"
