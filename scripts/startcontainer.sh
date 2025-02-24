#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull akashak799/simple-python-app

# Run the Docker image as a container
docker run -d --name akash799 -p 5000:5000 akashak799/simple-python-app
