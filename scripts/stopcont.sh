#!/bin/bash
set -e  # Exit if any command fails

echo "Finding the running container..."

# Get the first running container ID (if any)
containerID=$(docker ps -q | head -n 1)

if [ -n "$containerID" ]; then
    echo "Stopping and removing container: $containerID"
    docker stop "$containerID"
    docker rm -f "$containerID"
else
    echo "No running containers found. Skipping removal."
fi
