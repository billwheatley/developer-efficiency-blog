# Jekyll Builder Image

Container image that contains the tools to build a Jekyll Website.

Jekyll is a tool that converts markdown into static html pages.

## Build the Builder Image

cd into this directory

```console
podman build -t jekyll-builder:latest .
```

Once this is built you can re-use it as a builder image, until you want to update the tooling in this container. in which case you can rebuild using the same command.

## Build the Jekyll site with the builder container

Incrementally build the site use

``` console
podman run -t \
    --mount=type=bind,source=../content/,destination=/source,rw=true \
    --mount=type=bind,source=./output/,destination=/destination,rw=true \
    jekyll-builder:latest \
    /usr/bin/jekyll build -s /source -d /destination
```

## To serve it locally with local content with nginx

```console
podman run -d \
    --mount=type=bind,source=./output/,destination=/usr/share/nginx/html,ro=true \
    -p 8080:80 \
    nginx:latest 
```

## Misc Development notes

### Using bundler for gems during container build

The `Gemfile` and `Gemfile.lock` in this directory contain the gem definitions and will be picked up by the container build and built into the container. The container image can be quickly reused for incremental builds using a predictable environment.

#### Jekyll Theme Gems

Themes will be built into the image using process described above. The 2 themes I am building in currently are:

* `minima`
* `jekyll-theme-so-simple`

### If you want a default Jekyll site (aka start over)

```console
mkdir -p output

podman run \
    --mount=type=bind,source=../content/,destination=/source,rw=true \
    --mount=type=bind,source=./output/,destination=/destination,rw=true \
    -t \
    jekyll-builder:latest \
    /usr/bin/jekyll new /destination -s /source
```