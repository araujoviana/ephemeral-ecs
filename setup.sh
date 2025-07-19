#!/bin/bash

# This install nix on your VM

set -e # Exits when anything fails

if command -v nix >/dev/null 2>&1; then
    echo "Nix is already installed 🤦"
    exit 0
fi

# This is problematic in POSIX sh, but should be fine everywhere else
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon

echo "Please restart your shell or source the Nix profile:"
echo "  . $HOME/.nix-profile/etc/profile.d/nix.sh"
