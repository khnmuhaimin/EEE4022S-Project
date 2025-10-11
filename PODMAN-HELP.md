# EEE4022S Podman Container Setup

## Pull the latest Ubuntu image
podman pull ubuntu

## Create and start a container named EEE4022S-Container with 25GB storage
podman run -it --name EEE4022S-Container --storage-opt size=25G ubuntu

## Save (commit) the current container state as a new image
podman commit EEE4022S-Container EEE4022S-Image

## Copy files from your host machine into the container
podman cp /path/on/host EEE4022S-Container:/path/in/container

## Copy files from the container back to your host
podman cp EEE4022S-Container:/path/in/container /path/on/host

## Stop the running container to free resources
podman stop EEE4022S-Container

## Restart and attach to the container later
podman start -ai EEE4022S-Container

