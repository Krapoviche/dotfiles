#!/bin/bash

os=$(uname -s | tr '[A-Z]' '[a-z]')
arch=$(uname -m)

echo "Running on $os, arch $arch"

# Get prebuilt version of zsh
zsh_bin_address=https://github.com/romkatv/zsh-bin/releases/download/v6.1.1/zsh-5.8-$os-$arch.tar.gz
curl -fsSL -o zsh_install.sh https://raw.githubusercontent.com/romkatv/zsh-bin/master/install && chmod +x zsh_install.sh &&  ./zsh_install.sh -d ~/.local -e no

# Get my dotfiles
curl -fsSl -o dotfiles_archive https://github.com/Krapoviche/dotfiles/releases/download/v0.0.0/zsh_archive
tar xvf dotfiles_archive
rm dotfiles_archive
