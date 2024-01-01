#!/bin/zsh

# Script to set up symbolic links for configuration files after cloning the repository
echo "Starting nvim configuration"

# Path to the cloned repository
repo_path=~/dotfiles
nvim_config_dir=~/.config/nvim

# Check if ~/.config/nvim directory already exists
if [ -d "$nvim_config_dir" ]; then
    read -p "Existing nvim configuration found. Do you want to replace it? (y/n): " replace_config
    if [ "$replace_config" != "y" ]; then
        echo "Aborted. No changes were made."
        exit 0
    else
        echo "Removing existing nvim configuration..."
        rm -rf "$nvim_config_dir"
    fi
fi

# Create symbolic links
echo "Creating symlinks"
if ln -s "$repo_path/nvim" "$nvim_config_dir"; then
    echo "Nvim symlinks created successfully."
else
    echo "Error: Failed to create symlink." 
    exit 1
fi

echo "Checking contents of $nvim_config_dir/init.lua"
cat "$nvim_config_dir/init.lua"
echo "Done. Everything is set up."
