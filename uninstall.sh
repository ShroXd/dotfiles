#!/bin/bash

PACKAGES=(vim zsh git)
TARGET_DIR=~/
STOW_DIR=$(pwd)

for package in "${PACKAGES[@]}"; do
    stow -t "$TARGET_DIR" -D "$package"
done

