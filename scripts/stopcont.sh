#!/bin/bash
set -e

# Stop the running container (if any)
#!/bin/bash

containerID=$(docker ps | awk 'NR==2 {print $1}')


docker rm -f $containerID
