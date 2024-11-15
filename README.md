# Developer Efficiency Blog

This is the git backend for the [developerefficiency.com](https://developerefficiency.com/) blog

This is built with [Jekyll](https://jekyllrb.com/) + [So Simple theme](https://github.com/mmistakes/so-simple-theme?tab=readme-ov-file)

Running on an [nginx container](https://hub.docker.com/_/nginx) with production hosting by [DigitalOcean](https://www.digitalocean.com/)

## About the Blog

The goal of this a blog will be dedicated to exploring the strategies, tools, and practices that empower software development teams to work smarter, faster, and more effectively. From optimizing development workflows and leveraging automation to designing robust software architectures and aligning technology with business goals, this blog provides actionable insights and expert guidance for developers, architects, and IT leaders looking to enhance productivity and drive innovation. Whether you're navigating cloud adoption, implementing domain-driven design, or refining your DevOps practices, you'll find practical advice and thought leadership to help you succeed in today’s dynamic software landscape.

### Blog Article Preview

![blog](blog-screenshot.png)

You can read the entire article [here](https://developerefficiency.com/2024/10/30/funding-devops-for-success.html) and discover more at [developerefficiency.com](https://developerefficiency.com/)

## Blog Stack

* **Git** - Backend Artifact Storage on GitHub
  * Articles written in markdown (A simple markup Language)
  * Container build artifacts
  * Jekyll configuration
  * Jekyll build artifacts
  * So Simple Jekyll theme artifacts and customizations
  * Backend technical documentation
* **Jekyll + So Simple Theme** - For converting Markdown to static HTML artifacts
* **Container Builder Image** - Builder Environment for running Jekyll builder
* **Container Runtime Image** - [nginx](https://nginx.org/) web server runtime environment to serve static HTML artifacts
* **Youtube** - For emended video hosting

### Production Environment

DigitalOcean App Platform PAAS is used for the production environment

* DigitalOcean App Platform CD (Continuos Delivery)
  * GitOps Methodology to build off GitHub hosted version of this Repo
    * `main` branch is production.
    * Rebuilds on any `main` branch change / push in [Bill Wheatley's developer-efficiency-blog repo](https://github.com/billwheatley/developer-efficiency-blog)
    * Uses GitHub application integration between the 2 services
    * By convention I am using branch based pull requests in GitHub to control changes to `main`
  * Produces Runtime container based off root level [Dockerfile](./Dockerfile)
    * Multistage Dockerfile: Build and Runtime stages
    * No shared container repo specific to this blog (as of now)
      * This means no intermediate builder images shared with dev environment
      * Dockerfile builds off common public images in Docker Hub every time CD is triggered w/o any pre-existing layers.
      * CD is a complimentary service with the DigitalOcean App Platform so I don't pay extra for using more build compute.
      * This approach does take a longer time to run but the build is still relatively quick so far.
      * Might add a container repo to the stack in the future for additional speed, more precise repeatability and/or image sharing in dev.
* Docker container hosting of runtime image.
  * SSL Routing included
* Monitoring of runtime container
* Auto restarts if runtime container crashes
* Currently running a single instance but opportunity for horizontal scaling (for an extra fee) if needed.  Design is extremely friendly to horizontal scaling since its stateless and has no backend at runtime.

### Local Development and Article Writing Environment

* Linux desktop (distro varies depending on which desktop I am using)
  * Side Note: you can build/configure of any one of my desktop environments starting from a few select distros freshly installed and using the [provision-desktop repo](https://github.com/billwheatley/provision-desktop) to automate the build.
* Local clone of git repo on desktop
* vsCode for artifact editing.
  * Added spell check plugin
  * Unfortunately no grammar check plugins available that I can find.
  * Used for final editing of markdown articles:
    * Add Jekyll specific headers to markdown, its specific to Jekyll and not standard to markdown
    * Image references [in the Jekyll way](#jekyll-and-image-references-in-markdown)
    * General cleanup of MD format some of other editors don't do well
  * Used to edit yaml configs
  * Used to edit *So Simple* theme artifact templates in markdown and HTML.
  * Used for README.md documentation editing
* Initial article development with **Google Docs**: Initial article development
  * After initial completion, I export as Markdown, save as file in this repo
  * vsCode from there for final tweaking
  * Last time I used this Google Docs did some odd stuff with Markdown formatting that required me to do tedious changes
    * I might create a `sed` script to automatically cleanup their anti-patterns to Jekyll. If I do that it will be added to this repo.
* `podman`: Container build and runtime CLI front end.
* Containerized builder image
  * Dev builder artifacts are in [jekyll-builder/](./jekyll-builder/) folder.
  * [Builder image Dockerfile](./jekyll-builder/Dockerfile) is custom, it has the base of the theme built in.
  * No shared container repo specific to this blog (as of now).
  * Must build the *container builder* image locally to use it. Builder image is built off of common public images and libraries.
  * Similar copy/paste Dockerfile code to the builder stage of the production container image build.
  * Builder image is used as a short lived container to generate the site in static html with Jekyll.
  * The generated static site html artifacts root directory is mounted from the local file system into the build container [see jekyll-builder/README.md](./jekyll-builder/README.md)
* Containerized nginx Runtime
  * Uses the official nginx image on docker hub w/o modifications (in dev)
  * The generated static site html is mounted into the nginx container where nginx can server these up.
* Browser pointed to the local running nginx container to preview and verify look and feel.
  * Simple browser refresh (after builder is incrementally run) is all that is needed between iterations of editing to see changes.
* GNU Image Manipulation Program (GIMP) for image editing.

## Repo Structure

```console
.                   # Root Directory of project
├── content         # Non-generated Jekyll content
│   ├── assets      # Images I use thought the blog
│   ├── _data       # So-Simple Global theme configuration
│   ├── _includes   # So-Simple artifacts, some modified
│   ├── _layouts    # So-Simple layout artifacts, some modified
│   └── _posts      # The blog posts
└── jekyll-builder  # Development builder image
```

### Jekyll and Image References in Markdown

The way Jekyll assembles the static HTML and artifacts, it puts html output of `_posts` into a different directory structure then the equivalent markdown file lives in.  This makes relative references to image assets incompatible between standard markdown viewing and the compiled html website.

Example, a markdown file in `content/_posts/2024-08-08-mbpm.md` might reference an image like this:

```markdown
![First mbpm](../assets/mbpm-1.png)
```

This would be valid reference to the image in the markdown given the file structure of the repo.

However the Jekyll build will layout the relevant compiled assets like this:

```console
<output dir>
├── 2024
│   └── 08
│       └── 08
│           └── mbpm.html
└── assets
    └── mbpm-1.png
```

It does not replace the image reference. Thus the file `2024/08/08/mbpm.html` would render this html `<img src="../assets/mbpm-1.png">`, making a relative reference to an image that is invalid in this directory structure.

What I have decided to use absolute references instead, which will be invalid in markdown. Other assets references that Jekyll and the *So Simple* theme add in, all use absolute references to `/assets`, so I am going with it. In markdown posts image references will look like this:

```markdown
![First mbpm](/assets/mbpm-1.png)
```

The `<output dir>` will be in copied into a standard nginx container to the default html root at `/usr/share/nginx/html`.  This will make `http://<my-server>/assets/mbpm-1.png` a valid reference when running on a web server.

## Building and Running an Instance of this Blog Locally

### Production Build

This is good for testing the final container image locally that will be built by DigitalOcean App Platform CD.

In the Root directory run:

```console
# Run the Build
podman build -t developer-efficiency-blog:latest .

# Once built, you run it:
podman run -d --name developer-efficiency-blog -p 8080:80 developer-efficiency-blog:latest
```

Now you can hit http://localhost:8080 with your browser and check it out

Cleaning up:

```console
# To Stop it:
podman kill developer-efficiency-blog

# To start it backup (if you like the command options from the initial run command)
podman start developer-efficiency-blog

# If you want to delete the developer-efficiency-blog run definition:
podman kill developer-efficiency-blog
podman rm developer-efficiency-blog
```

### Development Build

If you want to work in an iterative manner, building and reloading quickly [see jekyll-builder/README.md](./jekyll-builder/README.md)

## Adding Blog Articles Guide

New Articles go under `content/_posts/` directory, the file name is in the pattern `yyyy-MM-dd-my-blog-topic.md`

### Jekyll Header

All finalized Markdown blog files need this header, it starts at the very first line, here is a template

```yaml
---
title: "My Pretty Print Title"
layout: post
author: bill_wheatley
date:   YYYY-MM-dd 00:00:00 -0500
tags: 
  - Tag 1
  - Tag 2 
image:
  thumbnail: /assets/my-thumbnail.png
  path: /assets/my-blog-banner.png
---
```

NOTES:

* `author` must match an author in `content/_data/authors.yaml`
* `date` Make sure it matches the file name
* `tags` is a free form list but make sure they line up with exiting tabs (case sensitive), check the [website](https://developerefficiency.com/tags/) for current tags to make sure you are in sync
* `image.thumbnail` This should be used, it shows up in blog post listings, it can be a repeat of the banner image
* `image.path` This is required, It's the banner image
  * These can be over barring, the wider you make it relative to hight, the less ridicules it looks
  * If you want that area to appear blank, use: `/assets/empty-wide.png` its a very wide and short blank image that will not break the page

### Obtaining Stock Images

I like [Unsplash](https://unsplash.com/) for royalty free photos.

I like [Canva](https://www.canva.com/) for royalty free editable designs (generated images)

Use an image editor if you need to crop or manipulate

## Contacting Bill Wheatley

If you are interested in contacting Bill please visit [Bill's LinkedIn page](https://www.linkedin.com/in/bill-wheatley/)
