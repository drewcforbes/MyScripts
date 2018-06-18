export storyNumber=`git branch | sed -E -n 's/^\* ([0-9]+).*$/\1/p'`
echo 'git commit -m "[#'$storyNumber'] ' | pbcopy
