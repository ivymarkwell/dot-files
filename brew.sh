#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install
brew install asdf
brew install elixir
brew install erlang
brew install git
brew install hugo
brew install node
brew install postgresql
brew install python
brew install ruby
brew install sqlite
brew install tig
brew install yarn
brew install zsh

# Remove outdated versions from the cellar
brew cleanup
