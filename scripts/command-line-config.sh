echo
echo "Installing and configuring GPG"
brew cask install gpg-suite
brew cask install veracrypt

brew install pinentry
brew install ykman
brew install ykpers
brew install hopenpgp-tools

echo
echo "Copying GPG config"
cp -f files/gpg.conf ~/.gnupg/gpg.conf
cp -f files/gpg-agent.conf ~/.gnupg/gpg-agent.conf

echo
echo "Fetching the public key for the smart card"
echo "Type 'fetch' then 'quit' in the GPG prompt"
gpg --card-edit

echo
echo "Configuring zsh with prezto"
brew install zsh
rm -rf "${HOME}/.zprezto"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

echo
echo "Copying over runcom commands to home directory"
runcoms_to_copy=(zlogin zlogout zshenv)
for rcfile in ${runcoms_to_copy[@]}; do
  ln -sf "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo
echo "Installing Prezto Contrib"
git clone --recurse-submodules https://github.com/belak/prezto-contrib ${HOME}/.zprezto/contrib

echo
echo "Copying over customized dotfiles"
cp -f files/zpreztorc ~/.zpreztorc
cp -f files/zprofile ~/.zprofile
cp -f files/zshrc ~/.zshrc
cp -f files/aliases.zsh ~/.aliases.zsh
cp -f files/config.zsh ~/.config.zsh

echo
echo "Setting zsh as the default shell"
if [[ ! $(grep '/usr/local/bin/zsh' /etc/shells) ]]; then
  sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'
fi
chsh -s /usr/local/bin/zsh

echo
echo "Sourcing new config"
source ~/.zshrc
