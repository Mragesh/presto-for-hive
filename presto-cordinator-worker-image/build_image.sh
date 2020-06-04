#!/bin/bash

set -e

REPONAME=mragesh
PRESTOVER=334

docker build --build-arg PRESTO_VER=$PRESTOVER -t presto .

# Tag and push to the public docker repository.
docker tag presto $REPONAME/presto
docker push $REPONAME/presto
