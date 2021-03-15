#!/bin/sh

set -e

GOOS=$1
GOARCH=$2

version=1.16.2
tar=go1.16.2.src.tar.gz

apt-get -y update
apt-get -y install bzip2

curl -L -O https://golang.org/dl/${tar}

tar fxz ${tar}

cd go/src

GOOS=$GOOS GOARCH=$GOARCH ./bootstrap.bash

cd ../..

ls go-${GOOS}-${GOARCH}-bootstrap.tbz

