# Fish Configuration

This repository contains the personal `fish` shell configuration of @otaviocc.

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
