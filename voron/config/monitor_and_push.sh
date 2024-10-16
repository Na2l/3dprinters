#!/bin/bash

# Navigate to the repository
cd ~/3dprinters/voron/config
pwd
# Check for changes
git status -s
if [[ -n $(git status -s) ]]; then
    # Add all changes
    git add .

    # Commit with the current date and time
    git commit -m "Updated $(date '+%Y-%m-%d %H:%M:%S')"

    # Push changes to the remote repository
    git push origin main
fi

