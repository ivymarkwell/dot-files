#!/bin/zsh

# TODO:
# - Add installs for VSCode extensions
# - Move git aliases from .zshrc into .gitconfig

echo "Installing Xcode command line tools and Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew upgrade
BREW_PREFIX=$(brew --prefix)

echo "Installing Homebrew packages..."
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
brew cleanup

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Setting up .zshrc configuration..."
cat .zshrc > ~/.zshrc

echo "Setting up git config..."
echo "What's your name?"

read user_name

git config --global user.name $user_name

echo "What's your email?"

read user_email
git config --global user.email $user_email
