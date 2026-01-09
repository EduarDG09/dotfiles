#!/bin/bash
# Define Zen Cache paths (adjust if you use a non-standard profile name)
ZEN_CACHE="$HOME/.cache/zen"

echo "Cleaning Zen Browser caches..."

# Remove web cache and startup cache
if [ -d "$ZEN_CACHE" ]; then
  rm -rf "${ZEN_CACHE:?}"/*
  echo "Successfully cleared: $ZEN_CACHE"
else
  echo "Zen cache directory not found. Skipping."
fi
