setopt NO_BG_NICE
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS
setopt LOCAL_TRAPS
setopt PROMPT_SUBST
setopt auto_cd

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# history
setopt HIST_VERIFY
setopt EXTENDED_HISTORY
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY

setopt COMPLETE_ALIASES

bindkey "^b" backward-word
bindkey "^w" forward-word
bindkey "^e" end-of-line
bindkey "^y" beginning-of-line

bindkey "^h" backward-char
bindkey "^j" down-line-or-history
bindkey "^k" up-line-or-history
bindkey "^l" forward-char

# hh
#export HH_CONFIG=hicolor
#bindkey -s '^r' "hh\n"

# qfc
export PATH="$ZSH/qfc/bin":"${PATH}"
[[ -s "$ZSH/qfc/bin/qfc.sh" ]] && source "$ZSH/qfc/bin/qfc.sh"

# zce
source "$ZSH/zce/zce.zsh"
bindkey "^f" zce

# auto suggestion
source "$ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh"

# make terminal command navigation sane again
# bindkey '^[^[[D' backward-word
# bindkey '^[^[[C' forward-word
# bindkey '^[[5D' beginning-of-line
# bindkey '^[[5C' end-of-line
# bindkey '^[[3~' delete-char
# bindkey '^[^N' newtab
# bindkey '^?' backward-delete-char
