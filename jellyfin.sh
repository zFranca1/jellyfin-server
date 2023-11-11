#!/bin/bash


udisksctl unmount -b /dev/sda1
echo "turning off container"
docker stop jellyfin
sleep 2
echo "container is off"

sleep 1
echo "mounting block device..."
udisksctl mount -b /dev/sda1

echo "start jellyfin container..."
docker-compose up -d

docker ps

echo "server is on... good movie"
