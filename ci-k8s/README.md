# ci-k8s

This Dockerfile creates a base image with the latest versions of
`kubectl` and `kops` for CI deployment.

Run the following commands to build an image and push it to Docker Hub.

```
docker build -t cavagrill/ci-k8s:latest .
docker push cavagrill/ci-k8s
```
