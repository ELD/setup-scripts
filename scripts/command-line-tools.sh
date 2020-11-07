echo
echo "Installing and configuring command line utilities"

brew install bash
brew install bat
brew install boost
brew install circleci
brew install clang-format
brew install coreutils
brew install direnv
brew install dockutil
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
brew install node
brew install pgcli
brew install postgresql
brew install python
brew install ripgrep
brew install ruby
brew install rustup-init
brew install sccache
brew install speedtest-cli
brew install sqlite
brew install starship
brew install terraform
brew install tmux
brew install vim
brew install watch
brew install wget
brew install wrk
brew install yarn
brew install youtube-dl

echo
echo "Installing (N)Vim configuration"
echo
pip3 install neovim
gem install neovim

if [ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]; then
    echo
    echo "Installing (N)Vim configuration and installing Vim Plug"
    echo
    cp -f files/vimrc ~/.vimrc
    cp -f files/vimrc.bundles ~/.vimrc.bundles

    mkdir -p ~/.config/nvim
    ln -s ~/.vimrc ~/.config/nvim/init.vim

    echo
    echo "Installing Vim Plug for NeoVim"
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    nvim +PlugInstall +UpdateRemotePlugins +qall

    echo
    echo "Installing Vim Plug for Vim 8"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    vim +PlugInstall +UpdateRemotePlugins +qall
fi

echo
echo "Installing Rust nightly toolchain"
rustup-init -y --no-modify-path --default-toolchain nightly
