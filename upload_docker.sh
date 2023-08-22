
dockerpath="sevencrabs/nambv6:latest"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker login 

# Step 3:
# Push image to a docker repository
sudo docker push $dockerpath

