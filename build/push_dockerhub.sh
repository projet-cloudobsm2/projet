#!/bin/bash

#Docker credentials
DOCKER_USERNAME="projetcloudobsm2"

#Docker image names
DOCKER_APPLICANTS="applicants_api"
DOCKER_IDENTITY="identity_api"
DOCKER_JOBS="jobs_api"
DOCKER_DATABASE="postgres"
DOCKER_WEB="web"

#Log in to Docker Hub
docker login -u "$DOCKER_USERNAME"

#Build the images
docker build -t applicants_api:latest -f Services/Applicants.Api/Dockerfile ./
docker build -t identity_api:latest -f Services/Identity.Api/Dockerfile ./
docker build -t jobs_api:latest -f Services/Jobs.Api/Dockerfile ./
docker build -t postgres:latest -f Database/Dockerfile ./
docker build -t web:latest -f Web/Dockerfile ./

#Tag the images
docker tag applicants_api:latest $DOCKER_USERNAME/$DOCKER_APPLICANTS:latest
docker tag identity_api:latest $DOCKER_USERNAME/$DOCKER_IDENTITY:latest
docker tag jobs_api:latest $DOCKER_USERNAME/$DOCKER_JOBS:latest
docker tag postgres:latest $DOCKER_USERNAME/$DOCKER_DATABASE:latest
docker tag web:latest $DOCKER_USERNAME/$DOCKER_WEB:latest

#Push the tagged images
docker push $DOCKER_USERNAME/$DOCKER_APPLICANTS:latest
docker push $DOCKER_USERNAME/$DOCKER_IDENTITY:latest
docker push $DOCKER_USERNAME/$DOCKER_JOBS:latest
docker push $DOCKER_USERNAME/$DOCKER_DATABASE:latest
docker push $DOCKER_USERNAME/$DOCKER_WEB:latest

echo "All images have been successfully pushed."