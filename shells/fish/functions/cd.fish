# Wrapper around cd to output folder content on cd
function cd
  if count $argv > /dev/null
    builtin cd "$argv"; and exa --group-directories-first
  else
    builtin cd ~; and exa --group-directories-first
  end
end
