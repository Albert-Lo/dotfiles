setopt NO_BG_NICE
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS
setopt LOCAL_TRAPS
setopt PROMPT_SUBST
setopt auto_cd
unsetopt monitor

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

bindkey "∫" backward-word
bindkey "∑" forward-word
bindkey "¢" end-of-line
bindkey "^E" end-of-line
bindkey "º" beginning-of-line
bindkey "≈" delete-char
bindkey "∂" delete-word

bindkey "˙" backward-char
bindkey "∆" down-line-or-history
bindkey "˚" up-line-or-history
bindkey "¬" forward-char

# hh
#export HH_CONFIG=hicolor
#bindkey -s '^r' "hh\n"

# qfc
export PATH="$ZSH/qfc/bin":"${PATH}"
[[ -s "$ZSH/qfc/bin/qfc.sh" ]] && source "$ZSH/qfc/bin/qfc.sh"

# zce
source "$ZSH/zce/zce.zsh"
bindkey "^j" zce

# auto suggestion
source "$ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh"
