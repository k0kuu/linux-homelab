#!/bin/bash
set -e

echo "=== Updating system ==="
sudo apt update && sudo apt upgrade -y

echo "=== Installing essentials ==="
sudo apt install -y \
  nginx \
  python3 \
  python3-pip \
  python3-flask \
  git \
  curl \
  wget \
  vim \
  htop \
  jq \
  tree \
  net-tools \
  openssh-server \
  systemd-coredump \
  tar \
  gzip \
  rsync

echo "=== Setting up aliases ==="
echo "alias ll='ls -la'" >> ~/.bashrc
echo "alias grep='grep --color=auto'" >> ~/.bashrc

echo "=== Cleaning up ==="
sudo apt autoremove -y

echo "=== Done ==="
