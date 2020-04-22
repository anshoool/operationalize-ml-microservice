#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
dockerpath=anshul1098/machine-learning-udacity

# Step 2:  
echo "Docker ID and Image: $dockerpath"
docker login

# Step 3:
docker push $dockerpath

