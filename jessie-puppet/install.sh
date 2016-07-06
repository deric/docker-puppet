#!/bin/bash
# This bootstraps Puppet on Debian
set -e

version=$1
echo "version=${version}"
a=( ${version//./ } )   # replace points, split into array


if [ ${a[0]} -ge 4 ]; then
  echo "not supported yet"
  exit 1
else
  # for puppet 3.8.x and older
  gem install puppet -v ${version}
fi
