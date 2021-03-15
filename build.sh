#!/bin/sh

set -e

version=1.16.2
tar=go1.16.2.src.tar.gz

curl -L -O https://golang.org/dl/${tar}

tar fxz ${tar}

cd go/src

GOOS=openbsd GOARCH=amd64 ./bootstrap.bash

cd ../..

ls go-openbsd-amd64-bootstrap

tar cfJ go-openbsd-amd64-bootstrap.tar.xz go-openbsd-amd64-bootstrap

