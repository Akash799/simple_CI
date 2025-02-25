#!/bin/bash
set -e  # Exit if any command fails


# Check if there are containers to remove
containers=$(sudo docker ps -a -q)
if [ -z "$containers" ]; then
    echo "No containers to remove."
else
    # Remove all containers
    sudo docker rm -f $containers
fi
