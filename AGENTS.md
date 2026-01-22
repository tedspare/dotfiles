# AGENTS.md

This file provides context for AI coding assistants working with this dotfiles repository.

## Purpose

Personal macOS dotfiles and setup automation for a new machine.

## Structure

```
.dotfiles/
├── .zshrc          # Shell configuration (symlinked to ~/.zshrc)
├── setup.sh        # One-shot setup script for fresh macOS installs
├── README.md       # User-facing setup instructions
└── AGENTS.md       # This file
```

## Conventions

### Adding new dotfiles
1. Add the file to this repo (e.g., `.gitconfig`, `.vimrc`)
2. Add a symlink command in `setup.sh`: `ln -sf ~/.dotfiles/<file> ~/<file>`

### Adding new apps
1. If installable via Homebrew: add to the `brew install --cask` block in `setup.sh`
2. If custom install needed: add a new section with curl/script
3. Update the Programs table in `README.md`

### Shell aliases
Add to `.zshrc`. Keep aliases short and mnemonic.

## Notes

- `setup.sh` is idempotent - safe to re-run
- Homebrew handles app updates after initial install
- Symlinks use `-sf` to force overwrite existing files
