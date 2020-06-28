# Path to your oh-my-zsh installation.
export ZSH='/Users/ivymarkwell/.oh-my-zsh'

# Theme
ZSH_THEME='robbyrussell'
DISABLE_AUTO_UPDATE='true'

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS='true'

# Plugins
plugins=(asdf git mix npm tig vscode)
source /Users/ivymarkwell/.oh-my-zsh/oh-my-zsh.sh

# Git
alias gaa='git add -A'
alias gp='git push -u origin HEAD'
alias glog='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gc='git checkou'
alias gb='git checkout -b'
alias gra='git remote add'
alias gpu='git pull'
alias gcl='git clone'
alias gf='git reflog'

# History
alias hist='history'

# Kill
alias kill_port='fuser -n tcp -k '

# Shortcuts
alias dev=alias dl='cd ~/Development/'

# Add asdf to shell
. /usr/local/opt/asdf/asdf.sh