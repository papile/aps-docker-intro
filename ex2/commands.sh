#!bin/sh

# Build a container and tag it as well with a useful name
docker build -t example2:latest .


# Run this container as is
docker run -i example2:latest

# Run this container with a port mapping to localhost (MAKE SURE YOUR SERVER IS BOUND TO 0.0.0.0)
docker run -p 4567:4567 -it example2:latest 

# Run your container with an environment variable as well as a local bind mount
docker run -p 4567:4567 -e FOO=bar --mount type=bind,source=/tmp,target=/usr/src/app/tmp -it example2:latest

# Create a container volume
docker volume create example2-vol

# Run with that volume instead
docker run -p 4567:4567 -e FOO=bar --mount source=example2-vol,target=/usr/src/app/tmp -it example2:latest

# tag a local image with a remote repository
docker tag example2:latest myregistry.example.com/example2:latest

# push the image
docker push myregistry.example.com/example2:latest
