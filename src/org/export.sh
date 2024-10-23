#!/bin/bash

# Set the directory to search (replace with your actual path)
TARGET_DIR="."
ROOT_DIR="../../"
# Function to process each .org file
# Find all .org files recursively
find "$ROOT_DIR" -type f -name "*.html" -exec rm {} \;
find "$TARGET_DIR" -type f -name "*.org" -exec emacs {} -f org-html-export-to-html --kill \;
find "$ROOT_DIR" -type f -name "*~" -exec rm {} \;
git add "$ROOT_DIR" && git commit -m "$1" && git push
