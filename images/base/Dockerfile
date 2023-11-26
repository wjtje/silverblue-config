FROM registry.fedoraproject.org/fedora-toolbox:39

# Install Zsh
RUN dnf -y update && \
    dnf install -y zsh

# Install openssh
RUN dnf install -y nc openssh-server

# Copy custom scripts
COPY scripts/ /usr/local/bin/
RUN chmod +x /usr/local/bin/*
