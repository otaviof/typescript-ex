Tekton Pipeline (Custom-Tasks)
------------------------------

In this directory you will find a [Tekton Pipeline][tektonPipeline] using [Custom-Tasks](tektonCustomTasks) based CI. To configure the CI, run the following commands.

Enable Custom-Tasks support setting `enable-custom-tasks` to `true` on the `ConfigMap` named `feature-flags`:

```bash
oc --namespace=tekton-pipelines edit configmap feature-flags
```

And then, create a new project:

```bash
oc new-project typescript-ex
```

Make sure the service-account `pipeline` has sufficient privileges to run the Pipeline:

```bash
oc adm policy add-scc-to-user privileged --serviceaccount=pipeline
oc adm policy add-role-to-user edit --serviceaccount=pipeline
```

And finally, apply the resources:

```bash
oc apply -f ci/tekton-custom-tasks/
```

[tektonPipeline]: https://github.com/tektoncd/pipeline
[tektonCustomTasks]:https://github.com/tektoncd/community/blob/main/teps/0002-custom-tasks.md