DOCKER_USERNAME="lamisb7"
DOCKER_PASSWORD="Daka123456@"
DOCKER_REPO=" "

# Se connecter à Docker Hub
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Builder les images
docker build -t applicants_api:latest -f Services/Applicants.Api/Dockerfile ./
if [ $? -ne 0 ]; then
    echo "Error: Failed to build applicants_api image."
    exit 1
fi

docker build -t identity_api:latest -f Services/Identity.Api/Dockerfile ./
if [ $? -ne 0 ]; then
    echo "Error: Failed to build identity_api image."
    exit 1
fi

docker build -t jobs_api:latest -f Services/Jobs.Api/Dockerfile ./
if [ $? -ne 0 ]; then
    echo "Error: Failed to build jobs_api image."
    exit 1
fi

# Taguer les images
docker tag applicants_api:latest $DOCKER_REPO:applicants_api-latest
docker tag identity_api:latest $DOCKER_REPO:identity_api-latest
docker tag jobs_api:latest $DOCKER_REPO:jobs_api-latest

# Pousser les images taguées
docker push $DOCKER_REPO:applicants_api-latest
if [ $? -ne 0 ]; then
    echo "Error: Failed to push applicants_api image."
    exit 1
fi

docker push $DOCKER_REPO:identity_api-latest
if [ $? -ne 0 ]; then
    echo "Error: Failed to push identity_api image."
    exit 1
fi

docker push $DOCKER_REPO:jobs_api-latest
if [ $? -ne 0 ]; then
    echo "Error: Failed to push jobs_api image."
    exit 1
fi

echo "All images have been successfully pushed."