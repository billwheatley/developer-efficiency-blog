# Builder Image + static site build
FROM alpine:latest as builder

RUN apk update && \
    apk add ruby ruby-dev ruby-rdoc ruby-irb make gcc g++ libc-dev && \
    gem install bundler
    

ADD jekyll-builder/Gemfile /
ADD jekyll-builder/Gemfile.lock /

RUN bundle install && \
     mkdir /source && \
     mkdir /jekyll-site

ADD content /source

RUN /usr/bin/jekyll build -s /source -d /jekyll-site

# Runtime Image
FROM nginx:latest
COPY --from=builder /jekyll-site /usr/share/nginx/html