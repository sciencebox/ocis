#!/bin/bash

# Tag name
BASE_TAG='gitlab-registry.cern.ch/sciencebox/docker-images/ocis'

# Specify cvmfs version to be installed (or comment out to use the latest)
OCIS_IMAGE_VERSION='1.11.0'	#digest: sha256:a34eafe3390920ed36a91d080b35e41d389c8fab71b4f2676fee07a845a5fda8
OCIS_IMAGE_VERSION='1.20.0'	#digest: sha256:b75288e78ee3192e97261b6de85a11a67dbbca97fe46624aaaa74a62e77770bb

# Build the Docker image
if [ -z $OCIS_IMAGE_VERSION ]; then
  TAG="$BASE_TAG:latest"
  docker build -t $TAG .
else
  TAG="$BASE_TAG:$OCIS_IMAGE_VERSION"
  docker build --build-arg OCIS_IMAGE_VERSION=:$OCIS_IMAGE_VERSION -t $TAG .
fi

# Push the image to the GitLab registry
docker login gitlab-registry.cern.ch
docker push $TAG

