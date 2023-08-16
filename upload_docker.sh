
dockerpath="sevencrabs/nambv6:latest"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag mlapi $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath
