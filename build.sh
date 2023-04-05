#!/bin/sh

docker build -t writeas/writefreely:latest -t writeas/writefreely:v0.13.2 --build-arg REPOSITORY=https://github.com/writefreely/writefreely.git -t localhost:5000/writeas/writefreely:latest --build-arg VERSION=v0.13.2 .

# push writefreely image to local container repository.
docker push localhost:5000/writeas/writefreely
