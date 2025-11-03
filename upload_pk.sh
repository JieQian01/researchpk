#!/bin/zsh
# === upload.sh ===
# Quick uploader for GitHub ImageHost
# Usage: ./upload.sh "commit message"

# Navigate to the repo root
cd "$(dirname "$0")"

# Default commit message if none provided
COMMIT_MSG=${1:-"Update image and markdown files"}

# Add all tracked and new files (except ignored ones)
git add ctrip/.  notes/.  temp/.

# Commit with the provided message
git commit -m "$COMMIT_MSG"

# Push to GitHub
git push origin main

# Show current repo status
echo "✅ Upload complete!"
git status

