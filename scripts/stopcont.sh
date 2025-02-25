#!/bin/bash
set -e  # Exit if any command fails


# Check if there are containers to remove
containers=$(docker ps -a -q)
if [ -z "$containers" ]; then
    echo "No containers to remove."
else
    # Remove all containers
    docker rm $containers
fi
