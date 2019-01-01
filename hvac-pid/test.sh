#!/bin/sh

IMAGE=hvac-pid-test:latest

docker build --rm=false --tag $IMAGE .
docker run --rm $IMAGE pytest
docker rmi $IMAGE