FROM centos:7

RUN yum -y install sudo openssh-server openssh-clients curl ntpdate
RUN mkdir -p /var/run/sshd
RUN echo root:root | chpasswd
RUN sed -i 's/^#Port 22/Port 22/' /etc/ssh/sshd_config \
 && sed -ri 's/^#?PermitRootLogin .*/PermitRootLogin yes/' /etc/ssh/sshd_config \
 && sed -ri 's/^#?PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config
COPY ./install.sh /
ARG puppet_version
RUN bash install.sh $puppet_version
RUN echo "export PATH=$PATH:/opt/puppetlabs/puppet/bin" > /root/.bash_profile && echo 'LANG="C.UTF8"' > /etc/locale.conf
