#!/bin/bash
# This bootstraps Puppet on RedHat/Centos
set -e

version=$1
echo "version=${version}"
minor=1
a=( ${version//./ } )   # replace points, split into array

# gets major dist version e.g. 6/7/8
major=$(rpm -E %{rhel})
curl -o /tmp/puppet.rpm http://yum.puppetlabs.com/puppet${a[0]}-release-el-${major}.noarch.rpm
rpm -ivh /tmp/puppet.rpm
yum -y update && yum install -y puppet-agent-${version}-${minor}.el${major}
mkdir /root/.ssh/
cat <<EOF > ~/.ssh/environment
PATH=/opt/puppetlabs/bin:/opt/puppetlabs/bin/hiera:/usr/bin:/opt/puppetlabs/bin/hiera:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$PATH
EOF
mkdir /etc/puppet && ln -s /etc/puppet/modules /etc/puppetlabs/code/modules
rm /tmp/puppet.rpm
