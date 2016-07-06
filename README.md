# Docker images with preinstalled Puppet

Docker images for automated test.

Puppet versions are defined in `versions.txt` file. One version per line. In order to release all images simply run

```
cd jessie-puppet && make
```
Currently Puppet is installed via rubygems, which is more flexible in specifing versions.
