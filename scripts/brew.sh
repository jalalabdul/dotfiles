#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi

# Install other useful binaries.
brew install youtube-dl
brew install rename
brew install dfc
brew install tree
brew install htop
brew install pidof

# Install mpd, mpdscribble, ncmpcpp, and mpc
brew install mpd
brew install ncmpcpp
brew install mpdscribble
brew install mpd

# Remove outdated versions from the cellar.
brew cleanup
