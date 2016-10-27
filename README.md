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

#### Run command for latest heidisql build:

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
tagplus5/heidisql \
wine /home/ubuntu/heidisql/heidisql_latest.exe
```

#### Create launcher for ubuntu
copy `ubuntu/heidisql.png` to `~/.local/share/icons/`

copy `ubuntu/heidisql.desktop` to `~/.local/share/applications/`

change path to `heidisql.sh` in `~/.local/share/applications/heidisql.desktop`

`Exec=/home/ubuntu/apps/heidisql.sh`