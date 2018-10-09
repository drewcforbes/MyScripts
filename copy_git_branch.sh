# Use this to copy a git story number into your clipboard with formatting for pivotal tracker integration with git commit messages. 
# The script extracts the story number from your branch name and copies it to your clipboard
# Works for OS X
#
# Example branch name: 1234567-feature-description
# Example script result: Copies `1234567`
#
# Recommended usage: 
# Save this script on your computer somewhere, perhaps ~/Scripts/copy_git_branch.sh
# Add an alias such as
# alias copyNewGitCommit='sh ~/MyScripts/copy_git_branch.sh'
# (via bash_profile, .zshrc, etc, for whichever shell you use)
# From a git repo, invoke copyNewGitCommit, then paste with command v

export storyNumber=`git branch | sed -E -n 's/^\* ([0-9]+).*$/\1/p'`
echo 'git commit -m "[#'$storyNumber'] ' | pbcopy
