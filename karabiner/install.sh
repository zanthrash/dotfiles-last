#!/usr/bin/env bash

echo "symlink karabiner.edn file to ~/.config folder"

cd "$(dirname "$0")"
ROOT=$(pwd -P)

echo "$ROOT"
ln -sf "$ROOT/karabiner.edn" "$HOME/.config/karabiner.edn"

goku