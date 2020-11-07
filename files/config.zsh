# Configuration for zsh
export CARGO_HOME="${HOME}/.cargo"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}"
export GOPATH="${HOME}/workspace/go"
export GOBIN="$GOPATH/bin"
export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"
export MYSQL_57_HOME="/usr/local/opt/mysql@5.7"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
export PIP3_PATH="${HOME}/Library/Python/3.7"
export RUST_WORKSPACE="$HOME/workspace/rust"
export RUSTC_WRAPPER=sccache

path=(
  ${MYSQL_57_HOME}/bin
  /usr/local/opt/coreutils/libexec/gnubin
  /usr/local/{bin,sbin}
  /usr/bin
  /bin
  /usr/sbin
  /sbin
  /opt/X11/bin
  ${path}
  ${HOME}/.local/bin
  ${CARGO_HOME}/bin
  ${GOPATH}/bin
  ${PIP3_PATH}/bin
)

# Source aliases if they exist
if [[ -a "${HOME}/.aliases.zsh" ]]; then
    source "${HOME}/.aliases.zsh"
fi

# iTerm2 Shell integration
if [[ -a "${HOME}/.iterm2_shell_integration.zsh" ]]; then
    source "${HOME}/.iterm2_shell_integration.zsh"
fi

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

