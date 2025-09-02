function brew-magic --description "Updates, upgrades, and cleans up Homebrew."
  if not command -v brew >/dev/null
    echo "Error: Homebrew is not installed. Please install it first." >&2
    return 1
  end
  brew update
  and brew upgrade
  and brew cleanup
end
