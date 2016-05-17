# reload zsh config
alias r!='source ~/.zshrc'

alias vim="nvim"

# Filesystem aliases
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias rf="rm -rf"
alias c='cd $CODE_DIR'
alias d='cd $DOTFILES'
alias l.='ls -d .*' # List dotfiles
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c | sort -h' # calculate disk usage for a folder

# Vim shortcut
alias v='nvim .'
alias vc='nvim $CODE_DIR'
alias vd='nvim $DOTFILES'

alias nwjs='/Applications/nwjs.app/Contents/MacOS/nwjs'

# Helpers
alias grep='grep --color=auto'

# Network
# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com; ipconfig getifaddr en0"
# Active ports
alias ports="sudo lsof -i -P | grep -i 'listen'"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"

# File size
alias fs="stat -f \"%z bytes\""


# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

alias chrome="/Applications/Google\\ \\Chrome.app/Contents/MacOS/Google\\ \\Chrome"

# Calendar
alias cal='cal | grep --color -EC6 "\b$(date +%e | sed "s/ //g")"'

# Suffix alias

alias -s coffee='coffee'
alias -s git='git'
alias -s js='node'
