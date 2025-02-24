#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
sudo docker pull akashak799/simple-python-app:latest

# Run the Docker image as a container
sudo docker run -d --name akash799 -p 5000:5000 akashak799/simple-python-app:latest
