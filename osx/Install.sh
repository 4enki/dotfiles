#!/bin/sh

# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# install apps

brew install tree
brew install git
brew install wget

brew tap caskroom/cask
brew tap caskroom/versions

function installcask() {
  brew cask install "${@}" 2> /dev/null
}

# random stuff
installcask skype
installcask telegram-desktop
installcask slack

# browsers
installcask google-chrome
installcask opera
installcask yandex
installcask firefox
installcask firefoxdeveloperedition

# editors
installcask sublime-text
installcask atom
installcask visual-studio-code

# devtools
installcask iterm2
installcask virtualbox
installcask filezilla
installcask zeplin
