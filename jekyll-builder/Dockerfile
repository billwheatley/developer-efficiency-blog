FROM alpine:latest

RUN apk update && \
    apk add ruby ruby-dev ruby-rdoc make gcc g++ libc-dev && \
    gem install bundler
    

ADD Gemfile /
ADD Gemfile.lock /

RUN bundle install
