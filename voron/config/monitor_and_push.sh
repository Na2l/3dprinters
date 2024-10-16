#!/bin/bash
src="home/h20/printer_data/config"
dest="/home/h20/3dprinters/voron/config"
ls -al $src
ls -al $dest
rsync -a --link-dest="$dest" "$src/" "$dest/"

# Navigate to the repository
cd /home/h20/3dprinters/voron/config
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

