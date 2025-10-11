# Use official Ubuntu as base
FROM ubuntu:latest

# Prevent prompts and update
RUN apt update && apt upgrade -y

# Install Python and pip
RUN apt install -y python3 python3-pip

# Start a bash session
CMD ["bash"]
