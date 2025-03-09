# Dotfiles

This repository contains my personal dotfiles for various applications and tools, managed using GNU Stow.

## What's Included

This dotfiles repository currently includes configurations for:

- **vim**: Vim editor configuration
- **zsh**: Z shell configuration
- **git**: Git configuration

## Prerequisites

Before using these dotfiles, you need to install GNU Stow on Arch Linux:

```bash
sudo pacman -S stow
```

## Installation

1. Clone this repository to your home directory:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

2. Run the install script to symlink all configurations:

```bash
./install.sh
```

### Installing Specific Configurations

If you only want to install specific configurations, you can use stow directly:

```bash
stow -t ~ vim    # Only install vim configuration
stow -t ~ zsh    # Only install zsh configuration
stow -t ~ git    # Only install git configuration
```

## How It Works

GNU Stow creates symbolic links from the files in this repository to your home directory. For example:

- `~/dotfiles/vim/.vimrc` → `~/.vimrc`
- `~/dotfiles/zsh/.zshrc` → `~/.zshrc`
- `~/dotfiles/git/.gitconfig` → `~/.gitconfig`

## Uninstalling

To remove all symlinks created by these dotfiles:

```bash
./uninstall.sh
```

To remove specific configurations:

```bash
stow -t ~ -D vim    # Remove vim configuration
stow -t ~ -D zsh    # Remove zsh configuration
stow -t ~ -D git    # Remove git configuration
```

## Customizing

To add new configurations:

1. Create a new directory for the application
2. Place configuration files in the directory, maintaining the same structure as they would appear in your home directory
3. Add the new package name to the `PACKAGES` array in `install.sh` and `uninstall.sh`

## License

This project is licensed under the MIT License - see the LICENSE file for details.
