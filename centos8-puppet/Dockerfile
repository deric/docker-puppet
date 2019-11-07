FROM centos:8
MAINTAINER Tomas Barton <barton.tomas@gmail.com>

RUN yum -y install sudo openssh-server openssh-clients curl
RUN mkdir -p /var/run/sshd
RUN echo root:root | chpasswd
RUN sed -ri 's/^#?PermitRootLogin .*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/^#?PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config
COPY ./install.sh /
ARG puppet_version
RUN bash install.sh $puppet_version
RUN echo "export PATH=$PATH:/opt/puppetlabs/puppet/bin" > /root/.bash_profile && echo 'LANG="C.UTF8"' > /etc/locale.conf
