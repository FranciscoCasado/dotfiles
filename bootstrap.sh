# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Core apps
sh install_apps.sh

# Stow
stow -t ~/.config --ignore=.sh .
