## [Heidisql](http://www.heidisql.com) in docker container

#### Run command for stable version:

```
#!/bin/bash

mkdir -p $HOME/.wine
mkdir -p $HOME/.heidisql
touch $HOME/.heidisql/portable_settings.txt

docker run -ti --rm \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/.wine:/home/ubuntu/.wine \
-v $HOME/.heidisql/portable_settings.txt:/home/ubuntu/heidisql/portable_settings.txt \
tagplus5/heidisql
```
