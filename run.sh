#!/bin/sh

unameOut="$(uname -s)"
case "${unameOut}" in
CYGWIN*) workDir="$(pwd -W)" ;;
MINGW*) workDir="$(pwd -W)" ;;
*) workDir="$(pwd)" ;;
esac

docker run -it --rm \
    --name hco-texenv \
    -v $workDir:/work \
    hybridcloudops/texenv:latest
