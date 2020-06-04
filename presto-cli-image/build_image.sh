#!/bin/bash

set -e

REPONAME=mragesh
PRESTOVER=334
TAG=presto-cli

docker build --build-arg PRESTO_VER=$PRESTOVER -t $TAG .

# Tag and push to the public docker repository.
docker tag $TAG $REPONAME/$TAG
docker push $REPONAME/$TAG
