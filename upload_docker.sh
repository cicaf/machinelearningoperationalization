#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="omarow/omarproject"

# Step 2:
# Authenticate & tag
docker login
docker tag omarow/omarproject $dockerpath
echo "Docker ID Image: $dockerimage"

# Step 3:
# Push image to a docker repository
docker push omarow/omarproject
