# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Core apps
sh install_apps.sh

# Stow apps config
stow -t ~/.config .

# Stow git config
stow -t ~ git
