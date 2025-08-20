#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Directory where datasets will be downloaded
DATA_DIR="./cookie_banner_datasets"
mkdir -p "$DATA_DIR"
cd "$DATA_DIR"

# Install Git LFS (if not already installed)
git lfs install

# Array of dataset repositories
datasets=(
    "https://huggingface.co/datasets/rag24/EUIP_Cookie_Banners"
    "https://huggingface.co/datasets/rag24/NYIP_Cookie_Banners"
)

# Loop through datasets and clone each
for repo in "${datasets[@]}"; do
    folder_name=$(basename "$repo")
    echo "Cloning $repo into $folder_name..."
    git clone "$repo" "$folder_name"
    cd "$folder_name"
    git lfs pull
    cd ..
done

echo "All datasets downloaded successfully in $DATA_DIR."
