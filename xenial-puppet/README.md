# Basic puppet image on Debian Jessie

[![Docker Layers](https://images.microbadger.com/badges/image/deric/jessie-puppet.svg)](https://microbadger.com/images/deric/jessie-puppet)

Build images with Puppet versions specified in `versions.txt`.

Build locally:
```
make build v=5.5
```

## Releases

Before doing a release, make sure, that the base image (`jessie-ruby`) is updated.

Push to hub.docker.com:
```
make releases
```
single release:
```
make release v=5.5.14
```

Build single image:
```
make puppet v=3.7.4
```
