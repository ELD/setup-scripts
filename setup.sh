#!/usr/bin/env bash

set -e

echo "Setting path to incldue /usr/local/bin"
export PATH="/usr/local/bin:$PATH"

echo "Pausing until you sign into the Mac App Store"
read -n1 -r -p "Press any key to continue..." key

echo "Caching password..."
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"
source ${MY_DIR}/scripts/setup-homebrew.sh
source ${MY_DIR}/scripts/mac-apps.sh
source ${MY_DIR}/scripts/command-line-config.sh
source ${MY_DIR}/scripts/command-line-tools.sh
source ${MY_DIR}/scripts/cask-applications.sh
source ${MY_DIR}/scripts/git-config.sh
source ${MY_DIR}/scripts/macos-config.sh
source ${MY_DIR}/scripts/macos-dock.sh
source ${MY_DIR}/scripts/finish.sh
