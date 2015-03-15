source $HOME/.aliases
[[ -e ~/.bash_profile ]] && emulate sh -c 'source ~/.bash_profile'

DISABLE_UNTRACKED_FILES_DIRTY=true
DEFAULT_USER=agrewal

# bullettrain options
BULLETTRAIN_RVM_SHOW=false
BULLETTRAIN_DIR_BG=red
BULLETTRAIN_GIT_BG=green
BULLETTRAIN_PROMPT_CHAR=""

source ~/.antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
  git
  git-extras
  gradle
  rvm
  ruby
  scala
  ssh-agent
  nvm
  osx
  brew
  brew-cask
  bower
  command-not-found
  zsh-users/zsh-completions
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
  #tarruda/zsh-autosuggestions
  djui/alias-tips
  unixorn/git-extra-commands
EOBUNDLES

antigen theme https://github.com/amandeepg/bullet-train-oh-my-zsh-theme.git bullet-train

antigen apply

# zsh-history-substring-search setup
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
