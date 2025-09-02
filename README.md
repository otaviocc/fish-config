# Fish Configuration

This repository contains the personal `fish` shell configuration of @otaviocc.

## Requirements

This configuration depends on the following tools, which can be installed with [Homebrew](https://brew.sh):

- `jq`
- `fzf`
- `carthage`
- `mint`
- `openjdk@17`
- `bundler`

You can install them by running:

```sh
brew install jq fzf carthage mint openjdk@17 bundler
```

## Installation

1.  Clone this repository to a desired location. For example, `~/.dotfiles/fish`:

    ```sh
    git clone https://github.com/otaviocc/fish-config.git ~/.dotfiles/fish
    ```

2.  Backup your existing `~/.config/fish` directory:

    ```sh
    mv ~/.config/fish ~/.config/fish.backup
    ```

3.  Create a symbolic link from `~/.config/fish` to the cloned repository:

    ```sh
    ln -s ~/.dotfiles/fish ~/.config/fish
    ```
