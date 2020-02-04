# Path to your oh-my-zsh installation.
export ZSH="/Users/ivymarkwell/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(asdf git mix npm tig vscode)

export PATH=/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

. /usr/local/opt/asdf/asdf.sh


