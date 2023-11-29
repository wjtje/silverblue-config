# silverblue-config

This is my personal Fedora Silverblue setup configuration

## Changes to the root OS

I know that you shouldn't change the base os on silverblue, but there are a few programs I want to use that doesn't work inside a container or flatpak.

```sh
# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install tweaks, extra themes and zsh
rpm-ostree install gnome-tweaks gnome-themes-extra zsh
# Now reboot, and then set zsh as default shell
chsh -s $(which zsh)
# Copy the custom zsh config
cp ./config/.zshrc ~/.zshrc

# Change personal gnome settings
gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark
gsettings set org.gnome.desktop.wm.preferences button-layout appmenu:minimize,maximize,close
```

## Zsh config

There is a small addition to the stock oh-my-zsh config that changes the prompt to include the name of the toolbox you are currently in.

## Images

These are custom images that can be used for a toolbox.

- [base](./images/base/README.md) - Only includes zsh and extra gnome themes, perfect for a starting point
- [development-base](./images/development-base/README.md) - Includes vscode and pinentry for gpg, perfect for a development workflow.
- [development-flutter](./images/development-flutter/README.md) - Added flutter and android studion on top of the development base.

All images can be build and run using the following commands:

```sh
podman build . -t wjtje/toolbox-base
toolbox create personal -i wjtje/toolbox-base
```
