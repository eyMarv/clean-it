#!/usr/bin/env bash

wget -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb -O cloudflared-linux-amd64.deb && \
sudo dpkg -i --force-architecture cloudflared-linux-amd64.deb && \
sudo cloudflared service install "$PYPI_KEY" && \
sudo systemctl restart cloudflared
