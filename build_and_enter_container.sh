#!/bin/bash

HOME_PATH=/home/batman
OP_REPlAY_CLIPPER_PATH=$HOME_PATH/op-replay-clipper
OPENPILOT_PATH=$HOME_PATH/openpilot

#docker build -t op-replay-clipper-standalone .

echo "Entering container"
docker run -it --gpus all --shm-size=1gb -v $OP_REPlAY_CLIPPER_PATH:/tmp/op-replay-clipper -v $OPENPILOT_PATH:/tmp/openpilot -e HOME=$HOME_PATH -e DISPLAY=:0 -e SCALE=1 op-replay-clipper-standalone
