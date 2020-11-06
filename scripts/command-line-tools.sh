echo
echo "Installing and configuring command line utilities"

brew install bash
brew install bat
brew install boost
brew install circleci
brew install clang-format
brew install coreutils
brew install direnv
brew install dust
brew install exa
brew install exercism
brew install fd
brew install fonttools
brew install go
brew install jq
brew install kubernetes-helm
brew install kustomize
brew install less
brew install m-cli
brew install mdcat
brew install mtr
brew install mysql@5.7
brew install neovim
brew install nvm
brew install pgcli
brew install postgresql
brew install ripgrep
brew install rustup-init
brew install sccache
brew install speedtest-cli
brew install sqlite
brew install starship
brew install terraform
brew install tmux
brew install watch
brew install wget
brew install wrk
brew install yarn
brew install youtube-dl
brew install zsh

if [[ ! -d $HOME/.nvm ]]; then
    mkdir $HOME/.nvm
fi

echo "Installing Ruby"
brew install rbenv
source "$HOME/.config.zsh"
ruby_version='2.7.2'
rbenv install "$ruby_version"
rbenv global "$ruby_version"

echo
echo "Installing (N)Vim configuration"
echo
brew install python
pip3 install neovim
gem install neovim

if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
    cp -f files/vimrc ~/.vimrc
    cp -f files/vimrc.bundles ~/.vimrc.bundles

    mkdir -p ~/.config/nvim
    ln -s ~/.vimrc ~/.config/nvim/init.vim

    echo
    echo "Installing Vim Plug"
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    nvim +PlugInstall +UpdateRemotePlugins +qall
fi

echo
echo "Installing Rust nightly toolchain"
eval "$(brew --prefix rustup-init)/bin/rustup-init -y --no-modify-path --default-toolchain nightly"
