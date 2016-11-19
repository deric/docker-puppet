#!/bin/bash
# This bootstraps Puppet on Debian
set -e

version=$1
echo "version=${version}"
a=( ${version//./ } )   # replace points, split into array


gem install deep_merge
if [ ${a[0]} -ge 4 ]; then
  codename=$(lsb_release -c | awk -v FS=":\t" '/Codename/ {print $2}')
  wget -O /tmp/puppet.deb http://apt.puppetlabs.com/puppetlabs-release-pc1-${codename}.deb -O /tmp/puppet.deb
  dpkg -i --force-all /tmp/puppet.deb
  apt-get update && apt-get install --force-yes  -y puppet-agent
  mkdir /root/.ssh/
  cat <<EOF > ~/.ssh/environment
PATH=/opt/puppetlabs/bin:/opt/puppetlabs/bin/hiera:/usr/bin:/opt/puppetlabs/bin/hiera:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$PATH
EOF
  rm -r /etc/puppetlabs/code/modules && ln -s /etc/puppet/modules /etc/puppetlabs/code/modules
  rm /tmp/puppet.deb
else
  # for puppet 3.8.x and older
  gem install puppet -v ${version}
fi
