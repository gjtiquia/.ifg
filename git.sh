# set git user.name
git config user.name "GJ Tiquia"

# set git user.email
git config user.email "gjtiquia@gmail.com"

# main branch instead of master
git config --global init.defaultBranch main

# editor 
# (eg. when doing git commit with no args)
git config --global core.editor "nvim"

# merge tool 
git config --global merge.tool nvimdiff

# prevent .orig files after resolving conflicts
git config --global mergetool.keepBackup false

# diff tool
git config --global diff.tool nvimdiff

# unstaged changes
git diff

# staged changes
git diff --staged

# difftool (accepts same args as git diff)
# use to see stuff like side by side diffs
git difftool

# move git pointer
# https://stackoverflow.com/questions/5471174/move-branch-pointer-to-different-commit-without-checkout
git branch --force [branch-name] [new-tip-commit]

# delete everything in repo
git rm -r *

# create a worktree at <path> checking out existing <branch>
# eg. git worktree add ../project-at-some-branch some-branch
git worktree add [path] [branch]

# list of worktrees
git worktree list

# delete worktree dir and worktree
# (run this first:) rm -rf [path]
git worktree prune

# for when you f- up git attributes
git add --renormalize .
