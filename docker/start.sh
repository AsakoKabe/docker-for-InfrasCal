#!/bin/bash

orange=`tput setaf 3`
reset_color=`tput sgr0`

export ARCH=`uname -m`

echo "Running on ${orange}${ARCH}${reset_color}"

docker run -it -d --rm \
        --env="DISPLAY=$DISPLAY" \
        --env="QT_X11_NO_MITSHM=1" \
        --privileged \
        --name infrascal \
        --net "host" \
        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
        -v `pwd`/../../:/home/docker_infrascal/src:rw \
        -v /home/${USER}:/home/${USER}:rw \
        -v /mnt:/mnt:rw \
        --gpus all  \
        ${ARCH}infrascal:latest 
