# Simple command to create and move to a directory
function mkcd
  mkdir -p $argv
  cd $argv
end
