#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

image_name=anshul1098/machine-learning-udacity
echo $image_name

# Step 1:
docker build --tag $image_name -f Dockerfile .

# Step 2: 
docker images

# Step 3: 
docker run -ti --rm -p 80:80 $image_name
