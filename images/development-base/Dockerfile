FROM wjtje/toolbox-base:latest

RUN \
rpm --import https://packages.microsoft.com/keys/microsoft.asc && \
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo' && \
dnf check-update && \
dnf install -y code pinentry-gnome3 'dnf-command(config-manager)' && \
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo && \
sudo dnf -y install gh
