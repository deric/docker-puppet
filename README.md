# Docker images with preinstalled Puppet

* ruby [![Docker Layers](https://images.microbadger.com/badges/image/deric/jessie-ruby.svg)](https://microbadger.com/images/deric/jessie-ruby)
* puppet [![Docker Layers](https://images.microbadger.com/badges/image/deric/jessie-puppet.svg)](https://microbadger.com/images/deric/jessie-puppet)

Docker images for automated test.

Puppet versions are defined in `versions.txt` file. One version per line. In order to release all images simply run

```
cd jessie-puppet && make
```
Currently Puppet is installed via rubygems, which is more flexible in specifing versions.

## Ruby versions

Default version in Debian package `ruby2.1`

 * Image tag `1.0`: `ruby 2.1.5p273`

Image available at [Docker Hub](https://hub.docker.com/r/deric/jessie-ruby/)

## Running images

```
$ docker run -i -t deric/jessie-ruby bash
root@c1ca72472e14:/# ruby -v
ruby 2.1.5p273 (2014-11-13) [x86_64-linux-gnu]
```
