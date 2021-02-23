Tekton based CI
---------------

In this directory you will find a [Tekton][tekton] based CI, expressed as Kubernetes resource files.
To apply them run:

```sh
kubectl apply -f .ci/tekton/
```

## Pipeline

Test and build a container image.

### Test

Runs application tests with NPM (`npm test`).

### Build

Build a container-image using [`buildah`][buildah], and push to a local registry.

[tekton]: https://github.com/tektoncd/pipeline
[buildah]: https://github.com/containers/buildah