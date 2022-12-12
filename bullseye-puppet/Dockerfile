FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y --no-install-recommends openssh-server openssh-client\
 curl ntpdate lsb-release wget locales dirmngr systemd gnupg apt-transport-https ca-certificates\
  && rm -rf /var/lib/apt/lists/*
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && echo 'LANG=en_US.UTF-8' > /etc/default/locale && locale-gen \
  && echo "export PATH=$PATH:/opt/puppetlabs/puppet/bin" > /root/.bashrc
COPY ./install.sh /
ARG puppet_version
RUN bash install.sh $puppet_version
