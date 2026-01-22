#!/bin/bash

# macOS dotfiles installation script

set -e

echo "Starting dotfiles installation..."

# Get the dotfiles directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Function to create symlink
create_symlink() {
    local source="$1"
    local target="$2"
    
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo "Warning: $target already exists and is not a symlink. Creating backup..."
        mv "$target" "$target.backup"
    fi
    
    if [ -L "$target" ]; then
        echo "Removing existing symlink: $target"
        rm "$target"
    fi
    
    echo "Creating symlink: $target -> $source"
    ln -s "$source" "$target"
}

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed"
fi

# Install packages from Brewfile
if [ -f "$DOTFILES_DIR/Brewfile" ]; then
    echo "Installing packages from Brewfile..."
    cd "$DOTFILES_DIR"
    brew bundle
else
    echo "Warning: Brewfile not found"
fi

# Create symlinks for dotfiles
echo "Creating symlinks for dotfiles..."
create_symlink "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
create_symlink "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"

echo "Dotfiles installation complete!"
echo ""
echo "Note: You may need to:"
echo "  1. Update .gitconfig with your name and email"
echo "  2. Restart your terminal or run 'source ~/.zshrc'"
echo "  3. Install oh-my-zsh if desired: sh -c \"\$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\""
