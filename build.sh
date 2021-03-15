#!/bin/sh

set -e

version=1.16.2
tar=go1.16.2.src.tar.gz

apt-get -y update
apt-get -y install bzip2

curl -L -O https://golang.org/dl/${tar}

tar fxz ${tar}

cd go/src

GOOS=openbsd GOARCH=amd64 ./bootstrap.bash

cd ../..

ls go-openbsd-amd64-bootstrap.tbz

