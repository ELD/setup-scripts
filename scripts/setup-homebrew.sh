echo

if hash brew 2>/dev/null; then
  echo "Homebrew is already installed!"
else
  echo "Installing Homebrew..."
  yes '' | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo
echo "Ensuring you have the latest Homebrew..."
brew update

echo
echo "Ensuring your Homebrew directory is writable..."
sudo chown -Rf $(whoami) $(brew --prefix)/*

echo
echo "Installing Homebrew services..."
brew tap homebrew/services

echo
echo "Tapping Homebrew Cask"
brew tap homebrew/homebrew-cask
brew tap homebrew/homebrew-cask-versions

echo
echo "Tapping GitHub"
brew tap github/gh

echo
echo "Tapping Hombrew casks"
brew tap cjbassi/ytop
brew tap github/gh
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap homebrew/services

echo
echo "Upgrading existing brews..."
brew upgrade

echo "Cleaning up your Homebrew installation..."
brew cleanup
