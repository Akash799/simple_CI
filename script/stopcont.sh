#!/bin/bash
set -e

# Stop the running container (if any)
#!/bin/bash

containerID=$(sudo docker ps | awk 'NR==2 {print $1}')


sudo docker rm -f $containerID
