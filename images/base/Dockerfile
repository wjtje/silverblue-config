FROM registry.fedoraproject.org/fedora-toolbox:39

# Install zsh and openssh
RUN dnf -y update && \
    dnf install -y zsh nc openssh-server

# Copy custom scripts
COPY scripts/ /usr/local/bin/
RUN chmod +x /usr/local/bin/*
