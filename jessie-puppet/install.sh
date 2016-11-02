#!/bin/bash
# This bootstraps Puppet on Debian
set -e

version=$1
echo "version=${version}"
a=( ${version//./ } )   # replace points, split into array


# for puppet 3.8.x and older
gem install puppet -v ${version}
gem install facter hiera
if [ ${a[0]} -ge 4 ]; then
  # TODO: some extra work for puppet4?
  echo $(puppet --version)
fi
