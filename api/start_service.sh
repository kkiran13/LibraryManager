#!/bin/sh

# Runner script to create images and call docker compose to spin up kafka, zookeeper and library manager containers

#--------------------------------------------------------------------------------------------
# To keep things neat and tidy, let's remove any dangling images

if [ -z "$(docker images --filter "dangling=true" -q)" ]; then
    echo "no dangling images to remove"
else
    docker rmi $(docker images --filter "dangling=true" -q --no-trunc) --force || true
fi

#--------------------------------------------------------------------------------------------

mvn clean package docker:build
cd dockerfiles; docker-compose up
