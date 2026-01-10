# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Core apps
sh install_apps.sh

stow -t ~ */

# Directory structure:
# dotfiles/
#   nvim/.config/nvim/init.lua
#   zsh/.zshrc
#   git/.gitconfig

# Creates:
# ~/.config/nvim/init.lua -> dotfiles/nvim/.config/nvim/init.lua
# ~/.zshrc -> dotfiles/zsh/.zshrc
# ~/.gitconfig -> dotfiles/git/.gitconfig

