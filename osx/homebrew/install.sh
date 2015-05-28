#!/usr/bin/env bash
#
# Homebrew
# http://brew.sh/

# Check Homebrew is installed
echo "Homebrew Check"
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we're up to date
echo "brew update"
brew update

echo "brew install ..."

# Install tree for displaying directory trees
brew install tree

# Install wget
brew install wget

# Install latest version of git
brew install git

# Install cask
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install GNU linux coreutils if you don't like BSD cmds / defaults
# https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/
#brew install coreutils

# Install generic colourizer
# http://korpus.juls.savba.sk/~garabik/software/grc.html
# https://github.com/garabik/grc
#brew install grc

# Install spark - turn numbers into graph for cmdline
# http://zachholman.com/spark/
#brew install spark
