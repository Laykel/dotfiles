find $HOME -name 'node_modules' -type d |
  xargs du -sh |
  sort -hr |
  fzf -m --header "Select which ones to delete" --preview 'cat $(dirname {})/package.json' |
  awk '{print $2}' |
  xargs -r rm -rf
