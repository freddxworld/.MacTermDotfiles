#!/bin/zsh

# Script to set up symbolic links for configuration files after cloning the repository
echo "Starting configuration"

# Path to the cloned repository
repo_path=~/.MacTermDotfiles

# Function to prompt user for confirmation
confirm() {
    echo -n "Do you want to overwrite your existing $1? (y/n): " 
    read response
    if [[ $response =~ ^[Yy]$ ]]; then
        return 0  # Return true if user confirms
    else
        return 1  # Return false if user cancels
    fi
}

# Function to replace existing file or create symbolic link
replace_or_create_symlink() {
    local source_file=$1
    local target_file=$2

    if [ -e "$target_file" ]; then
        confirm "$target_file" || return  # Skip if user cancels
        echo "Replacing existing $target_file."
        cp "$source_file" "$target_file"  # Copy content from source to target
    else
        echo "Creating new $target_file."
    fi

    # Create symbolic link
    ln -s "$source_file" "$target_file"
}

# Replace existing .zshrc or create symbolic link
replace_or_create_symlink "$repo_path/.zshrc" ~/.zshrc

# Replace existing .tmux.conf or create symbolic link
replace_or_create_symlink "$repo_path/.tmux.conf" ~/.tmux.conf

# Verify configuration
echo "Checking contents of ~/.zshrc:"
cat ~/.zshrc

echo "Checking contents of ~/.tmux.conf:"
cat ~/.tmux.conf

echo "Done. Everything is set up."
