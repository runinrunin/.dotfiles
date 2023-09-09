#!/bin/zsh

# Check if Homebrew is installed
if command -v brew &>/dev/null; then
    # Homebrew is installed, so install VSCode
    echo "Homebrew is installed. Installing VSCode..."
    brew install --cask visual-studio-code
    echo "VSCode has been installed."
    
   else
    # Homebrew is not installed
    echo "Homebrew is not installed. Please install Homebrew to continue."
fi