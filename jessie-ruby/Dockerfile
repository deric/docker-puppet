FROM debian:jessie
MAINTAINER Tomas Barton <barton.tomas@gmail.com>

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update --yes && apt-get upgrade -yq && apt-get install -y --no-install-recommends \
  apt-utils ruby2.1 rubygems locales \
  && rm -rf /var/lib/apt/lists/*
# disable rdoc installation
RUN echo 'gem: --no-rdoc --no-ri ' > /etc/gemrc && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
