storyNumber=`git branch | sed -E -n 's/^\* ([0-9]+).*$/\1/p'`;
printf '[#'$storyNumber'] ' | pbcopy
