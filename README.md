# docker-image-archive-utils
Wrapper shell scripts for docker image archive

## Requirements
- docker
- gzip (gunzip)
- bash

### Optional Requirements
- pigz
- xz

## Install

By default, script installed into `/usr/local/bin/`.  
You can set your favorite directory to `PREFIX`

```
$ git clone https://github.com/johejo/docker-image-archive-utils.git
$ cd docker-image-archive-utils/
$ make install
```

Uninstall
```
$ make uninstall
```

## Usage

Save docker image to archive using gzip
```
$ docker-save-image-to-archive -i alpine -t 3.8 -o alpine-3.8.tar.gz
```

Load docker image from archive using gunzip
```
$ docker-load-image-from-archive -f alpine-3.8.tar.gz
```

## Advanced Usage

We tested the operation with several compressors (`pigz`, `xz`) which has the `-c` (`--stdout`) option.

Save docker image to archive using xz
```
$ docker-save-image-to-archive -i alpine -t 3.8 -o alpine-3.8.tar.xz -c xz
```

Load docker image from archive using unxz
```
$ docker-load-image-from-archive -f alpine-3.8.tar.xz -c unxz
```

## License
MIT
