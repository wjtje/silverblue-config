# Toolbox base

This is the base image all other images are based on. It incluses basic tools and common settings. All images use zsh and expect that oh-my-zsh is installed.

## Tools installed

- ssh server
- zsh (and set as default shell)

## Custom commands

- `start-ssh` - Starts a ssh-server, and add an entry inside the ~/.ssh/config file for easy connection.
- `code` - Opens the current folder inside a vscode window on the host. (Requires the vscode flatpak to be installed and the remote-ssh extension)
