#!/bin/bash

docker build -e ELIXIR_VERSION=${ELIXIR_VERSION} -e NODE_VERSION=${NODE_VERSION} \
  -t cavagrill/elixir:${ELIXIR_VERSION}-node:${NODE_VERSION}-k8s .
docker push cavagrill/elixir:${ELIXIR_VERSION}-node:${NODE_VERSION}-k8s
