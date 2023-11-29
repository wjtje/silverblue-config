FROM wjtje/toolbox-development-base:latest

# Create development folder
RUN mkdir -p /usr/local/development && chown -R 1000:1000 /usr/local/development

# Install flutter
WORKDIR /usr/local/development
ARG FLUTTER_VERSION="3.16.1"
RUN wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_$FLUTTER_VERSION-stable.tar.xz && \
    tar xf flutter*.tar.xz && \
    rm -rf flutter*.tar.xz && \
    ln -s /usr/local/development/flutter/bin/flutter /usr/local/bin && \
    ln -s /usr/local/development/flutter/bin/dart /usr/local/bin

# Install dependensies
WORKDIR /tmp
RUN dnf install -y clang cmake ninja-build gtk3-devel && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm && \
    dnf install -y ./google-chrome-stable_current_x86_64.rpm

# Install android studio
WORKDIR /usr/local/development
ARG ANDROID_STUDIO_VERSION="2022.3.1.22"
RUN wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/$ANDROID_STUDIO_VERSION/android-studio-$ANDROID_STUDIO_VERSION-linux.tar.gz && \
    tar xf android*.tar.gz && \
    rm -rf android*.tar.gz && \
    ln -s /usr/local/development/android-studio/bin/studio.sh /usr/local/bin/android-studio

RUN flutter --disable-analytics
