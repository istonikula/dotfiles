#!/usr/bin/env bash

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, overwriting build-ins
brew install findutils --default-names
# Install GNU  `tar`, `g`-prefixed
brew install gnu-tar
# Install GNU `sed`, overwriting the build-in `sed`
brew install gnu-sed  --default-names
# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen

# Install docker utils
brew install fig

# Install other useful binaries
brew install ack
brew install git
brew install git-flow
brew install imagemagick --with-webp
brew install node # This installs `npm` too using the recommended installation method
brew install pigz
brew install pv
brew install tree
brew install ucspi-tcp # `tcpserver` et al.

# Remove outdated versions from the cellar
brew cleanup
