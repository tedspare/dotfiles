#!/bin/bash
set -e

echo "🚀 Setting up your Mac..."

# Install Homebrew if not present
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install apps via Homebrew
echo "Installing apps..."
brew install --cask \
    google-chrome \
    warp \
    raycast \
    cursor \
    shottr \
    granola \
    slack \
    proton-pass \
    notion-calendar

# Install Bun
echo "Installing Bun..."
curl -fsSL https://bun.sh/install | bash

# Install Claude Code (native installer)
echo "Installing Claude Code..."
curl -fsSL https://claude.ai/install.sh | bash

echo "✅ Done! Restart your terminal to use bun and claude."
