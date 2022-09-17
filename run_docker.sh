#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build . --tag=v1.0 vinopaul/example_app

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run Node app
docker run -p 3000:3000 v1.0
