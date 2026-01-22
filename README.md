# .dotfiles

dotfiles for macOS setup including Homebrew package management

## Overview

This repository contains configuration files (dotfiles) for setting up a new macOS development environment. It includes:

- **Brewfile**: Homebrew package definitions for installing applications and tools
- **Shell configuration**: `.zshrc` for Zsh shell
- **Git configuration**: `.gitconfig` with useful aliases and settings
- **Vim configuration**: `.vimrc` for basic Vim setup
- **Installation script**: Automated setup script

## Quick Start

1. Clone this repository:
   ```bash
   git clone https://github.com/dtyronestrand/.dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   ```

2. Run the installation script:
   ```bash
   ./install.sh
   ```

This will:
- Install Homebrew (if not already installed)
- Install all packages defined in the Brewfile
- Create symlinks for dotfiles in your home directory

## Manual Installation

If you prefer to install components separately:

### Install Homebrew packages

```bash
brew bundle
```

### Create symlinks manually

```bash
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.vimrc ~/.vimrc
```

## Customization

### Update Git configuration

Edit `.gitconfig` to add your personal information:
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Modify Brewfile

Edit the `Brewfile` to add or remove packages according to your needs.

### Customize shell

Edit `.zshrc` to add your own aliases, environment variables, and shell configurations.

## Files Included

- `Brewfile` - Homebrew package definitions
- `.zshrc` - Zsh shell configuration
- `.gitconfig` - Git configuration and aliases
- `.vimrc` - Vim editor configuration
- `install.sh` - Automated installation script
- `.gitignore` - Files to exclude from version control

## Requirements

- macOS
- Git (pre-installed on macOS)

## License

Feel free to use and modify these dotfiles for your own setup.
