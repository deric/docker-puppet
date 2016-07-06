FROM deric/jessie-ruby
MAINTAINER Tomas Barton <barton.tomas@gmail.com>

ARG puppet_version
COPY ./install.sh /
RUN bash install.sh $puppet_version
