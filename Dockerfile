FROM gitpod/workspace-full-vnc


USER root

# Install dependencies
RUN apt-get update                                             \
    && apt-get install -y chromium-browser                 \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
