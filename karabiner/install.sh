#!/usr/bin/env bash

echo "symlink karabiner.edn file to ~/.config folder"

ROOT=$(pwd -P)

ln -sf "$ROOT/karabiner.edn" "$HOME/.config/karabiner.edn"

goku