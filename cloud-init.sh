#!/usr/bin/env bash
set -euo pipefail

echo "apt-update"
sudo apt-get update

echo "# install go"
VERSION='1.17'
OS='linux'
ARCH='amd64'

curl -OL https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz
sudo tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
rm go$VERSION.$OS-$ARCH.tar.gz

echo 'PATH="$PATH:/usr/local/go/bin:'$HOME'/go/bin"' >> ~/.bash_aliases

echo "install ebpf tools and dependencies"
sudo apt install -y make
sudo apt install -y clang
sudo apt install -y llvm
sudo apt install -y libbpf-dev
sudo apt install -y libelf-dev

echo "# package installations complete!"
