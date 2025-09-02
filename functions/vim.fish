function vim --wraps vim -d "Open Neovim if available, otherwise fallback to Vim"
  if command -s nvim >/dev/null
    command nvim $argv
  else
    command vim $argv
  end
end
