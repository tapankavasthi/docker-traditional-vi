# Dockerfile for Traditional vi Editor

## Overview

In most modern linux distributions, vi's feature set is supported through vim:

```shell script
ls -l $(which vi)
lrwxr-xr-x  1 root  wheel  3 Jan  9 05:03 /usr/bin/vi -> vim
```
Well, we're actually running vim, even if we invoke vi.

Further, vim does provide a compatibility mode (-C) to ensure a backward compatibility, but that doesn't prevent us
from accidentally using a non-vi feature.

For rare situations where we want to exclusively invoke the original vi editor, we can use it within a docker container 
through this docker image. 

## Pulling the vi Docker Image

Just the usual way:

```shell script
docker pull tapankavasthi/vi
```

## Running the Container having Traditional vi

```shell script
docker run -it tapankavasthi/vi
```

## Builds

For builds, visit the repository page on Docker Hub: <br>
https://hub.docker.com/repository/docker/tapankavasthi/vi