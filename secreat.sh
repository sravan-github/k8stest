#!/bin/bash
kubectl create secret generic cloudsql-user-credentials --from-literal=username=hellokoding --from-literal=password=hellokoding
kubectl create secret generic cloudsql-proxy-credentials --from-file=credentials.json=/home/sravangcp/key.json
