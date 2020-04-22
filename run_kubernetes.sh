#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
dockerpath=anshul1098/machine-learning-udacity

# Step 2
kubectl run --generator=run-pod/v1 --image=$dockerpath machine-learning-app --port=80 --labels='app=machine-learning-app'


# Step 3:
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward --address 0.0.0.0 pod/machine-learning-app 80:80

# Shows logs of containers
kubectl logs -lapp=machine-learning-app --all-containers=true
