#!/bin/bash
for i in `seq 1 $1`; do
    docker rm -f autobd-node$i
    rm -rf /home/$USER/data/autobd-node/node$i
done
