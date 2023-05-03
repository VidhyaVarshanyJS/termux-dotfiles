#!/data/data/com.termux/files/usr/bin/bash

# Install git (if not already installed)
pkg install -y git

# Create backup directory and navigate to it
mkdir ~/termux-backup
cd ~/termux-backup

# Get current date and time
datetime=$(date -u "+%Y-%m-%d-%H-%M-%S")

# Create backup file with date and time in filename
tar -czvf termux-backup-$datetime.tar.gz /data/data/com.termux/

# Initialize a new Git repository and add files
git init
git add termux-backup-$datetime.tar.gz

# Commit changes
git commit -m "Add Termux backup file"

# Set remote origin
github_url="https://github.com/VidhyaVarshanyJS/termux.git"
# replace with your own Github repository URL
git remote add origin $github_url

# Push changes
git push -u origin main
