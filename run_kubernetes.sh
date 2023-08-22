#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="sevencrabs/nambv6"

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run microservice\
#    --generator=run-pod/v1\
#    --image=$dockerpath\
#    --port=80 --labels app=mlmicroservice
kubectl run microservice -n udacity --image=$dockerpath --port=80 --labels app=mlmicroservice

# Step 3:
# List kubernetes pods
kubectl get pods -n udacity

# Step 4:
# Forward the container port to a host
kubectl create svc nodeport app-service --tcp 8000:80 --node-port 31800 -n udacity
