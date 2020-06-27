#!/usr/bin/env bash

# install k8s
# DIR=~/workspace/github/teamserverless
# mkdir -p $DIR
# cd $DIR
# git clone https://github.com/teamserverless/k8s-on-raspbian.git --depth 1
# chmod +x $DIR/k8s-on-raspbian/script/prep.sh
# $DIR/k8s-on-raspbian/script/prep.sh

curl -sfL https://get.k3s.io | sh -

# enable docker daemon to receive tcp requests
sudo cp /lib/systemd/system/docker.service /lib/systemd/system/docker.service.bkp
EXEC_START=$(cat /lib/systemd/system/docker.service | grep "ExecStart=/usr/bin/dockerd")

if [ ! -z "${EXEC_START##*-H tcp://0.0.0.0:2375*}" ]; then
    NEW_EXEC_START=$(echo $EXEC_START | xargs printf "%s -H tcp://0.0.0.0:2375")
    # TODO: replace lines
fi
