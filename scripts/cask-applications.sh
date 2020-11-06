set +e

echo
echo "Accepting Xcode License"
echo
sudo xcodebuild -license accept

echo
echo "Installing applications"

# Auth
brew cask install authy
brew cask install 1password

# Browsers
brew cask install google-chrome-beta
brew cask install firefox-developer-edition

# Communication Apps
brew cask install discord
brew cask install element
brew cask install obs
brew cask install zoomus

# Design
brew cask install monodraw
brew cask install sketch
brew cask install skyfonts

# Dev Tools
brew cask install docker-edge
brew cask install paw
brew cask install jetbrains-toolbox
brew cask install sublime-text
brew cask install tableplus
brew cask install vagrant
brew cask install virtualbox || true
brew cask install visual-studio-code-insiders

# Fonts
brew cask install font-jetbrains-mono
brew cask install font-jetbrains-mono-nerd-font

# Terminals
brew cask install iterm2-nightly

# Utilities
brew cask install alfred
brew cask install bartender
brew cask install bettertouchtool
brew cask install clipy
brew cask install coconutbattery
brew cask install cyberduck
brew cask install daisydisk
brew cask install dash
brew cask install deckset
brew cask install intel-power-gadget
brew cask install istat-menus
brew cask install mactex
brew cask install numi
brew cask install screenflow
brew cask install sensei
brew cask install shiftit
brew cask install texpad

set -e
