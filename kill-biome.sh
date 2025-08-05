#!/bin/bash

echo "Checking for running Biome processes..."
ps aux | grep -E "biomejs/cli-darwin-arm64/biome" | grep -v grep

echo -e "\nKilling Biome processes..."
pkill -f "biomejs/cli-darwin-arm64/biome"

if [ $? -eq 0 ]; then
    echo "Biome processes killed successfully."
else
    echo "No Biome processes found or already terminated."
fi

echo -e "\nVerifying processes are terminated..."
ps aux | grep -E "biomejs/cli-darwin-arm64/biome" | grep -v grep

if [ $? -eq 0 ]; then
    echo "Warning: Some Biome processes may still be running."
else
    echo "All Biome processes have been terminated."
fi