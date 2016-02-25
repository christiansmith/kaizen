# Antigen
# =============================================================================
source $HOME/.kaizen/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen theme gentoo
antigen apply


# Editor
# =============================================================================
export EDITOR='vim'


# ZSHLE MODE
# =============================================================================
bindkey -v
bindkey '\e[3~' delete-char
bindkey '^R' history-incremental-search-backward


# Prevent Ctrl-d from closing the shell on an empty line
# =============================================================================
setopt ignore_eof


# GOLANG
# =============================================================================
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"


# Aliases
# =============================================================================
source $HOME/.aliases


# Ad Hoc Code Directory
# =============================================================================
code () { mkdir -p ~/Code/$(date +%Y-%m-%d)-$1 && cd $_ }


# Fuzzy autocomplete
# =============================================================================
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:[[:ascii:]]||[[:ascii:]]=** r:|=* m:{a-z\-}={A-Z\_}'
