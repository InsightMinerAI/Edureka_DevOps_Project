#!/bin/bash

# Stop all running containers
if [ "$(docker ps -q)" ]; then
    echo "Stopping running containers..."
    docker stop $(docker ps -q)
fi

# Remove all stopped containers
if [ "$(docker ps -a -q)" ]; then
    echo "Removing stopped containers..."
    docker rm $(docker ps -a -q)
fi

# Remove all Docker images
if [ "$(docker images -a -q)" ]; then
    echo "Removing Docker images..."
    docker rmi $(docker images -a -q)
fi

# Perform system prune if no containers or images are left
if [ -z "$(docker ps -a -q)" ] && [ -z "$(docker images -a -q)" ]; then
    echo "Pruning Docker system..."
    docker system prune -a -f
    echo "Docker containers and images have been deleted successfully."
else
    echo "Some containers or images still exist; system prune skipped."
fi
#
