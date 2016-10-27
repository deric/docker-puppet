FROM debian:jessie
MAINTAINER Tomas Barton <barton.tomas@gmail.com>

ENV LANG C.UTF-8

RUN apt-get update --yes && apt-get upgrade -yq && apt-get install -y --no-install-recommends apt-utils ruby2.1 rubygems \
  && rm -rf /var/lib/apt/lists/*
# disable rdoc installation
RUN echo 'gem: --no-rdoc --no-ri ' > /etc/gemrc
