#!/bin/bash

# Define variables
REPO_DIR="$HOME/i3-bubblgum-rice"
SCRIPT_PATH="$REPO_DIR/.sync.sh"
GITHUB_USERNAME="lwertzui"
GITHUB_API_KEY="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"

# Run the existing script
if [ -f "$SCRIPT_PATH" ]; then
    bash "$SCRIPT_PATH"
else
    echo "Script $SCRIPT_PATH not found!"
    exit 1
fi

# Add changes to git
cd "$REPO_DIR" || { echo "Failed to change directory to $REPO_DIR"; exit 1; }
git add .

# Prompt for commit message
read -p "Enter commit message: " COMMIT_MESSAGE

# Commit changes
git commit -m "$COMMIT_MESSAGE"

# Push changes to GitHub
GIT_URL="https://${GITHUB_USERNAME}:${GITHUB_API_KEY}@github.com/${GITHUB_USERNAME}/$(basename $REPO_DIR).git"
git push "$GIT_URL"
