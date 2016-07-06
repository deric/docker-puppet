# Basic puppet image on Debian Jessie

Build images with Puppet versions specified in `versions.txt`.

Build locally:
```
make build
```

Push to hub.docker.com:
```
make release
```

Build single image:
```
make puppet v=3.7.4
```
