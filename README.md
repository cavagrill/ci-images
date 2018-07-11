# ci-images

These images just add `kubectl` and `kops` to the `circleci/elixir`
images. This lets us run k8s operations from CircleCI.

Versions are provided for Elixir 1.5.3 and 1.6.6. Run the appropriate
`build-and-push-1.x.y` script to build an image and push it to Docker
Hub.
