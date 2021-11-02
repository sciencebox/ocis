#!/bin/bash

# Tag name
BASE_TAG='gitlab-registry.cern.ch/sciencebox/docker-images/ocis-idp'

# Specify cvmfs version to be installed (or comment out to use the latest)
OCIS_IMAGE_VERSION='1.11.0'

# Build the Docker image
if [ -z $OCIS_IMAGE_VERSION ]; then
  TAG="$BASE_TAG:latest"
  docker build -t $TAG .
else
  TAG="$BASE_TAG:$OCIS_IMAGE_VERSION"
  docker build --build-arg OCIS_IMAGE_VERSION=:$OCIS_IMAGE_VERSION -t $TAG .
fi

## # Push the image to the GitLab registry
## docker login gitlab-registry.cern.ch
## docker push $TAG

