#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Brew Cask
brew tap caskroom/cask

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi

# Install other useful binaries.
brew install ack
# brew install git
brew install imagemagick --with-webp
brew install potrace
brew install ssh-copy-id
brew install tree
brew install ctags-exuberant
brew install tmux
brew install ffmpeg
brew install qpdf

# Required by passbox
brew install gpg

# Remove outdated versions from the cellar.
brew cleanup

# Other tools
brew install youtube-dl

# Installing Quick Look plugins
# See https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode
#brew cask install qlstephen
brew cask install qlmarkdown
brew cask install webpquicklook