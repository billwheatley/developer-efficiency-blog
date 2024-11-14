# Developer Efficiency Blog

This is the git backend for the [developerefficiency.com](https://developerefficiency.com/) blog this is built with [Jekyll](https://jekyllrb.com/) + [So Simple theme](https://github.com/mmistakes/so-simple-theme?tab=readme-ov-file). Running on an [nginx container](https://hub.docker.com/_/nginx) with production hosting by [DigitalOcean](https://www.digitalocean.com/).

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
  * Backend Technical Documentation
* **Jekyll + So Simple Theme** - For converting Markdown to static HTML artifacts
* **Container Builder Image** - Builder Environment for running Jekyll builder
* **Container Runtime Image** - [nginx](https://nginx.org/) web server runtime environment to serve static HTML artifacts
* **Youtube** - For emended video hosting

### Production Environment

DigitalOcean App Platform PAAS Services is used for the production environment

* DigitalOcean App Platform CD
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
      * Might add a container repo to the stack in the future for additional speed, more precise repeatability anr/or image sharing in dev.
* Docker container hosting of runtime image.
  * SSL Routing included
* Monitoring of runtime Container
* Auto restarts if runtime container crashes
* Currently running a single instance but opportunity for horizontal scaling (for an extra fee) if needed.  Design is extremely friendly to horizontal scaling since its stateless and has no backend at runtime.

### Local Development and Article Writing Environment

* Linux desktop (distro varies depending on which desktop I am using)
  * Side Note: you can build/configure of any one of my Desktop Environments starting from a few select distros freshly installed and using the [provision-desktop repo](https://github.com/billwheatley/provision-desktop) to automate the build.
* Local clone of git repo on desktop
* vsCode for artifact editing.
  * Added spell check plugin to vsCode
  * Unfortunately no grammar check plugins available that I can find.
  * Used for final editing of markdown articles:
    * Add Jekyll specific headers to markdown, its specific to Jekyll and not standard to markdown
    * Image references in the Jekyll way
    * General cleanup of MD format some of other editors don't do well
  * Used to edit yaml configs
  * Used to edit *So Simple* theme artifact templates in markdown and HTML.
  * Used for README.md documentation editing
* Playing around with different markdown editors for article initial development.
  * First Attempt **vsCode**: have done initial development of markdown articles here before but lacks grammar checking.
  * Second Attempt **Google Docs**: Initial article development, export as Markdown, save as file in this repo, vsCode from there for final tweaking. Google Docs did some odd stuff with Markdown formatting that required me to do tedious changes to make the the markdown right for Jekyll.  If I land on this I might create a `sed` script to automatically cleanup their anti-patterns to Jekyll.
  * Future Attempt [StackEdit](https://stackedit.io/): Thinking about trying this one sometime for initial article development. Probably copy/paste after initial development into a file in this repo, vsCode from there for final tweaking.
* Podman: Container build and runtime CLI front end.
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

## Repo Structure

### Jekyll and Image References in Markdown

## Building and running an instance of this blog locally

### Production Build

### Development Build

## Adding Articles Guide

## Why I built the blog this way?

### It's wins (for me) between the alternatives

Everything is comparative. I wanted to own this website and control its destiny.

Building Software from complete scratch doesn't sound like how I want to spend my time when plenty of already written things, so that use case is out.

Using Software as a *Shared* service such as `wordpress.com` or `blogger.com` can limit what you can do and are often free of course with any free service you probably giving some amount of control and data up to the website operator which allows them to monetize you and your readers. I scratched this use case off.

`substack.com` is another Software as a *Shared* service, it seems interesting and has subscriber based monetization opportunities. In this model the operator takes a cut of subscription fees you bring in from your loyal readers. At this time I don't want to monetize in that manner but it sounds compelling.

The next pattern to consider is using the Word Press software. Word Press is Open Source software and by controlling the blog at the hosting level you open more control to yourself.  Their are many patterns to host this, a popular way is to get a hosting service that sets up the entire stack for you but gives you the control to configure, access backend components and change the service as you see fit. This is an extremely popular choice on the internet and my second choice behind a "Jekyll blog".

All of these options fell short, the following sections explain why a Jekyll blog attracted me.

### My Developer Background

Putting together a Jekyll blog is likely going to require a developer background.  There are many ways to do it and Jekyll itself is just one of many components to having a running blog at the end.  

This type of thing is what I done professionally so it so easy for me. You end up treating the blog article like building enterprise software which to me offers a number of advantages you don't get on any of the above options.

### Familiarity

I have been part of a team in the past that documented our work in a Jekyll blog (or wiki as we called it).  We shoved word docs and sharepoint aside and it was glorious. To be fair I haven't used Word Press but I can imagine some of the experiences operating a blog designed the way its done and user testimonies on the Internet confirmed my concerns.

### Production Efficiency and Future Costs

### Change control and History is so Much Better

### Runtime Security

### Ultra Portability and replicability

#### A Dev (or preview) environment

#### Multiple streams of development

### Potential to Change Delivery Patterns

## Contacting Bill Wheatley

If you are interested in contacting Bill please visit [Bill's LinkedIn page](https://www.linkedin.com/in/bill-wheatley/)
