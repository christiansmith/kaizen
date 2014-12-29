# Antigen
# =============================================================================
source ~/GitHub/christiansmith/kaizen/antigen/antigen.zsh
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


# Prevent Ctrl-d from closing the shell on an empty line
# =============================================================================
setopt ignore_eof


