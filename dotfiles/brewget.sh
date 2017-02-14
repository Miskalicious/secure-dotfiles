#!/bin/env bash

# install homebrew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# set up to brew
brew doctor
# turn analytics off
brew analytics off
