#! /bin/zsh

# Check if Homebrew is already installed; otherwise, install it
if ! command -v brew &> /dev/null
then
  echo "Installing Homebrew..."
  /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew and run bundle to install dependencies
brew doctor
echo "Updating Homebrew and installing dependencies..."
brew update && brew upgrade 
