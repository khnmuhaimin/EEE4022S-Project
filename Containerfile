# Use official Ubuntu as base
FROM ubuntu:latest

# Prevent prompts and update
RUN apt update && apt upgrade -y

# Install packages
# Python needs the user to enter timezone info so this Containerfile won't work
RUN apt install -y python3 python3-pip python3.12-venv git cmake

# Make and activate a python virtual environment
cd /home/ubuntu
python3 -m venv .venv
source .venv/bin/activate

# Install west
pip install west patool semver requests

# Setup the project workspace
west init -m https://github.com/khnmuhaimin/EEE4022S-Project --mr main EEE4022S-Workspace
cd EEE4022S-Workspace
west update

# Start a bash session
CMD ["bash"]
