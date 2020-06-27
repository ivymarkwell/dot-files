#!/bin/zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Xcode command line tools and Homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install packages
brew install asdf
brew install coreutils curl git
brew install elixir
brew install erlang
brew install git
brew install hugo
brew install node
brew install postgresql
brew install python
brew install tig
brew install yarn
brew install zsh

# Remove outdated versions from the cellar
brew cleanup

# Basic zsh setup
echo -e "# Path to your oh-my-zsh installation." >> ~/.zshrc
echo -e "export ZSH='/Users/ivymarkwell/.oh-my-zsh'" >> ~/.zshrc

echo -e "\n# Theme" >> ~/.zshrc
echo -e "ZSH_THEME='robbyrussell'" >> ~/.zshrc
echo -e "DISABLE_AUTO_UPDATE='true'" >> ~/.zshrc

echo -e "\n# Uncomment the following line to display red dots whilst waiting for completion." >> ~/.zshrc
echo -e "COMPLETION_WAITING_DOTS='true'" >> ~/.zshrc

echo -e "\n# Plugins" >> ~/.zshrc
echo -e "plugins=(asdf git mix npm tig vscode)" >> ~/.zshrc
echo -e "export PATH=/usr/local/bin:$PATH" >> ~/.zshrc
echo -e "source $ZSH/oh-my-zsh.sh" >> ~/.zshrc

echo -e "\n# Add asdf to shell" >> ~/.zshrc
echo -e echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ~/.zshrc

# Add aliases
echo -e "\n# Git" >> ~/.zshrc
echo -e "alias gaa='git add -A'" >> ~/.zshrc
echo -e "alias gp='git push -u origin HEAD'" >> ~/.zshrc
echo -e "alias glog='git log'" >> ~/.zshrc
echo -e "alias gs='git status'" >> ~/.zshrc
echo -e "alias gd='git diff'" >> ~/.zshrc
echo -e "alias gm='git commit -m'" >> ~/.zshrc
echo -e "alias gc='git checkou'" >> ~/.zshrc
echo -e "alias gb='git checkout -b'" >> ~/.zshrc
echo -e "alias gra='git remote add'" >> ~/.zshrc
echo -e "alias gpu='git pull'" >> ~/.zshrc
echo -e "alias gcl='git clone'" >> ~/.zshrc
echo -e "alias gf='git reflog'" >> ~/.zshrc

echo -e "\n# History" >> ~/.zshrc
echo -e "alias hist='history'" >> ~/.zshrc

echo -e "\n# Kill" >> ~/.zshrc
echo -e "alias kill_port='fuser -n tcp -k $1'" >> ~/.zshrc

echo -e "\n# Shortcuts" >> ~/.zshrc
echo -e "alias dev=alias dl='cd ~/Development/'" >> ~/.zshrc
