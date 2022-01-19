#!/usr/bin/env bash
set -euo pipefail

echo "apt-update"
sudo apt-get update

echo "install ebpf tools and dependencies"
sudo apt-get install make clang llvm libbpf-dev libelf-dev

echo "# install go"
VERSION='1.17'
OS='linux'
ARCH='amd64'

curl -OL https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz
sudo tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
rm go$VERSION.$OS-$ARCH.tar.gz

echo 'PATH="$PATH:/usr/local/go/bin:'$HOME'/go/bin"' >> ~/.bash_aliases

echo "# package installations complete!"