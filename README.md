<p align="center">
    <a alt="GitHub-Actions Test" href="https://github.com/otaviof/typescript-ex/actions">
        <img src="https://github.com/otaviof/typescript-ex/actions/workflows/test.yaml/badge.svg">
    </a>
</p>

`typescript-ex`
---------------

Is a "hello world" application written on TypeScript, it shows the [Shipwright's][shipwright] logo (`./assets/images/shipwright-logo.png`) in a simple page.

# Building and Running

To build the application run the following commands:

```bash
npm install
npm run build
```

Now you are ready to run the application from your workstation with:


```bash
npm run start
```

Test the application endpoint with `curl`:

```bash
curl 127.0.0.1:8080
```

## Buildpacks

The Buildpack settings for this project are the [`project.toml`](./project.toml) file. You can use [`pack`][buildpacksPack] to build a container image locally:

```bash
pack build --builder="paketobuildpacks/builder:base" \
    ghcr.io/otaviof/typescript-ex:latest
```

When `pack build` done, you can use `docker` to run the container image:

```bash
docker run --name=typescript-ex --rm --publish="8080:8080" \
    ghcr.io/otaviof/typescript-ex:latest
```

Test the endpoint with `curl` again:

```bash
curl 127.0.0.1:8080
```

At the end, stop the container:

```bash
docker kill typescript-ex
```

# CI

## OpenShift Pipelines (Tekton)

The resource to run continuous-integration jobs are documented on the [`ci/tekton` directory](./ci/tekton/).


[shipwright]: https://github.com/shipwright-io
[buildpacksPack]: https://buildpacks.io/docs/tools/pack/