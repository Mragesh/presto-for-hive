#!/bin/bash

kubectl create secret generic my-s3-keys --from-literal=access-key='myaccesskey' --from-literal=secret-key='mysecretkey'
