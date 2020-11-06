echo
echo "Configuring iTerm"
cp files/com.googlecode.iterm2.plist ~/Library/Preferences

echo
echo 'Customizing OS X configuration'

# hide the dock
defaults write com.apple.dock autohide -bool true
killall Dock

# fast key repeat rate, requires logout to take effect
defaults write ~/Library/Preferences/.GlobalPreferences KeyRepeat -int 1
defaults write ~/Library/Preferences/.GlobalPreferences InitialKeyRepeat -int 15
