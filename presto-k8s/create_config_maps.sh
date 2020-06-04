#!/bin/bash

# Update configMap in Kubernetes
kubectl create configmap presto-cfg --dry-run --from-file=config.properties.coordinator --from-file=config.properties.worker --from-file=node.properties.template --from-file=hive.properties.template -o yaml | kubectl apply -f -
