FROM deric/jessie-ruby:latest
MAINTAINER Tomas Barton <barton.tomas@gmail.com>

ARG puppet_version
RUN apt-get update && apt-get install -y --no-install-recommends openssh-server openssh-client curl ntpdate lsb-release wget \
  && rm -rf /var/lib/apt/lists/*
COPY ./install.sh /
RUN bash install.sh $puppet_version
