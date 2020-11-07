set +e

echo
echo "Installing Mac Apps"
echo

brew install mas

# ------- Big Chonker -------
mas install 497799835 # Xcode

# ------- Art -------
mas install 408981434 # iMovie
mas install 424389933 # Final Cut Pro
mas install 682658836 # GarageBand
mas install 634148309 # Logic Pro X
mas install 634159523 # MainStage 3
mas install 1289583905 # Pixelmator Pro

# ------- iWork -------
mas install 409201541 # Pages
mas install 409203825 # Numbers
mas install 409183694 # Keynote

# ------- Writing/Notes -------
mas install 736189492 # Notability
mas install 1444383602 # GoodNotes 5
mas install 775737590 # iA Writer
mas install 1225570693 # Ulysses
mas install 1289197285 # MindNode

# ------- Social/Task -------
mas install 904280696 # Things
mas install 803453959 # Slack
mas install 1482454543 # Twitter
mas install 975937182 # Fantastical

# ------- Safari Utilities -------
mas install 1107421413 # 1Blocker
mas install 1229416813 # Router
mas install 1458969831 # JSON Peep
mas install 1160374471 # PiPifier

set -e
