#!/bin/bash

# Delete the app
helm delete dapr -n=dapr-system

# Delete the namaespace
kubectl delete dapr-system