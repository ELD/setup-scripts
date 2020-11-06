echo
echo "Installing Git and associated tools"

brew install git
brew install gh
brew install diff-so-fancy

echo
echo "Setting global Git configurations"
git config --global core.editor /usr/local/bin/nvim
git config --global core.pager 	"diff-so-fancy | less --tabs=4 -RFX"

cp files/gitignore_global "${HOME}/.gitignore_global"
git config --global core.excludesfile ~/.gitignore_global

git config --global user.email "eric@dattore.me"
git config --global user.name "Eric Dattore"
git config --global user.signingkey 0x8973748FFF9B634F

git config --global gpg.program /usr/local/bin/gpg
cp files/git-commit-template.txt "${HOME}/.git-commit-template.txt"
git config --global commit.template ~/.git-commit-template.txt

git config --global commit.gpgSign true

git config --global push.default current
git config --global pull.rebase true

echo
echo "Setting up Git aliases..."
git config --global alias.st status
git config --global alias.di diff
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.cp cherry-pick
git config --global alias.br branch
git config --global alias.sta stash
git config --global alias.llog "log --date=local"
git config --global alias.flog "log --pretty=fuller --decorate"
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.lol "log --graph --decorate --oneline"
git config --global alias.lola "log --graph --decorate --oneline --all"
git config --global alias.blog "log origin/master... --left-right"
git config --global alias.ds "diff --staged"
git config --global alias.fixup "commit --fixup"
git config --global alias.squash "commit --squash"
git config --global alias.amendit "commit --amend --no-edit"
git config --global alias.unstage "reset HEAD"
git config --global alias.rum "rebase master@{u}"
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.please "push --force-with-lease"

