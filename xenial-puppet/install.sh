#!/bin/bash
# This bootstraps Puppet on Debian
set -e

version=$1
echo "version=${version}"
minor=1
a=( ${version//./ } )   # replace points, split into array

codename=$(lsb_release -c | awk -v FS=":\t" '/Codename/ {print $2}')
wget -O /tmp/puppet.deb http://apt.puppetlabs.com/puppet${a[0]}-release-${codename}.deb -O /tmp/puppet.deb
dpkg -i --force-all /tmp/puppet.deb
apt-get update && apt-get install -y puppet-agent=${version}-${minor}${codename}
mkdir /root/.ssh/
cat <<EOF > ~/.ssh/environment
export PATH=$PATH:/opt/puppetlabs/bin:/opt/puppetlabs/bin/hiera:/usr/bin:/opt/puppetlabs/bin/hiera:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$PATH
EOF
rm -r /etc/puppetlabs/code/modules && ln -s /etc/puppet/modules /etc/puppetlabs/code/modules
rm /tmp/puppet.deb
