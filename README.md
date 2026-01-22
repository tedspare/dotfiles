# Ted's Mac Setup

Factory reset? New Mac? Run this:

```bash
# 1. Open Terminal (zsh is default on macOS)

# 2. Install git & sign into GitHub
xcode-select --install
gh auth login  # or: generate a PAT at github.com/settings/tokens

# 3. Clone and run
git clone https://github.com/tedspare/dotfiles.git ~/.dotfiles
chmod +x ~/.dotfiles/setup.sh
~/.dotfiles/setup.sh
```

## What gets installed

| App | Install method |
|-----|----------------|
| Chrome | `brew --cask` |
| Warp | `brew --cask` |
| Cursor | `brew --cask` |
| Shottr | `brew --cask` |
| Granola | `brew --cask` |
| Slack | `brew --cask` |
| Proton Pass | `brew --cask` |
| Notion Calendar | `brew --cask` |
| Bun | `bun.sh/install` |
| Claude Code | `claude.ai/install.sh` |
