#!/bin/bash
cat << EOS

 tomoyukikino

 The elapsed time does not matter.
 Because speed is important.

EOS

#
# repository update
#
git checkout master
git pull origin master

#
# private.zsh update
#
cp $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/settings/zsh/private.zsh ~/.yadr/zsh/private.zsh
source ~/.zshrc

#
# Homebrew update and upgrade
#
brew upgrade --creanup

#
# Homebrew Cask check and upgrade
#
brew install --cask outdated
brew install --cask  upgrade

#
# App Store app upgrade
#
mas upgrade

