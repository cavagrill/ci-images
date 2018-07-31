ARG ELIXIR_VERSION=1.7
ARG NODE_VERSION=10
ARG KUBECTL_VERSION=1.9.3
ARG KOPS_VERSION=1.9.0

FROM elixir/elixir:$ELIXIR_VERSION-alpine
FROM node/node:$NODE_VERSION-alpine

RUN sudo wget -q https://storage.googleapis.com/kubernetes-release/release/v$KUBECTL_VERSION/bin/linux/amd64/kubectl && sudo chmod +x kubectl && sudo mv kubectl /usr/bin
RUN sudo wget -q https://github.com/kubernetes/kops/releases/download/$KOPS_VERSION/kops-linux-amd64 && sudo chmod +x kops-linux-amd64 && sudo mv kops-linux-amd64 /usr/bin/kops
