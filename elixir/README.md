# docker-images

## ci-k8s
This Dockerfile creates a base image with `kubectl` and `kops` for CI deployment.

Run the following commands to build an image and push it to Docker Hub.
, replacing
`${ELIXIR_VERSION}` with the version specified in the Dockerfile.

You can optionally pass `ELIXIR_VERSION` or `NODE_VERSION` to `docker build` using the
[`--build-arg <varname>=<value>`](https://docs.docker.com/engine/reference/builder/#arg)
syntax to override the defaults.

```
docker build -t cavagrill/elixir:${ELIXIR_VERSION}-node-k8s .
docker push cavagrill/elixir:${ELIXIR_VERSION}-node-k8s

docker build -t cavagrill/k8s:${ELIXIR_VERSION}-node-k8s .
docker build -t cavagrill/ci-k8s:latest .
docker push cavagrill/elixir:${ELIXIR_VERSION}-node-k8s
```
