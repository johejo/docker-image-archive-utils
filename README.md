# docker-image-archive-utils

Wrapper shell scripts for docker image archive

## Requirements

- docker
- gzip (gunzip)

### Optional Requirements

- pigz
- xz
- pxz

## Install

By default, script installed into `~/.local/bin/`.  
You can set your favorite directory to `PREFIX`

```sh
git clone https://github.com/johejo/docker-image-archive-utils.git
cd docker-image-archive-utils/
make install
export PATH="$HOME/.local/bin:$PATH"
```

## Uninstall

```sh
make uninstall
```

## Usage

### Save docker image to archive using gzip

```sh
docker-save-image-to-archive -i alpine -t 3.8 -o alpine-3.8.tar.gz
```

### Load docker image from archive using gunzip

```sh
docker-load-image-from-archive -f alpine-3.8.tar.gz
```

## Advanced Usage

We tested the operation with several compressors (`pigz`, `xz`, `pxz`) which has the `-c` (`--stdout`) option.

### Save docker image to archive using xz

```sh
docker-save-image-to-archive -i alpine -t 3.8 -o alpine-3.8.tar.xz -z xz
```

### Load docker image from archive using unxz

```sh
docker-load-image-from-archive -f alpine-3.8.tar.xz -z unxz
```

## License

MIT
