export PS1="\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;13m\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\H\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;14m\]\W\[$(tput sgr0)\] $ "
export LSCOLORS="gxBxhxDxfxhxhxhxhxcxcx"

if command -v most > /dev/null 2>&1; then
  export PAGER="most"
fi
alias ls="ls -Gp"
alias reload_bash=". ~/.bash_profile"
alias reload_tmux="tmux source-file ~/.tmux.conf"
alias groot="git root"
alias cdgr="cd $(git root)"

function porthog() {
  PORT=${1:-80}
  PROTOCOL=${2:-}
  sudo lsof -i ${PROTOCOL}:${PORT}
}

export PATH="$PATH:$HOME/Library/Python/3.7/bin"
export PATH="/usr/local/bin:$PATH"


alias journal='mkdir -p /Users/dcardoza/Dropbox/Journal/$(date +%Y)/; vim + "/Users/dcardoza/Dropbox/Journal/$(date +%Y)/$(date +%Y-%m-%d).md" -c "execute \"normal! Go$(date +%r)\<CR>========\<CR>\" | startinsert "'
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
