#!/bin/bash

[[ ! -z "$1" ]] && BUILDFILE=$1 || BUILDFILE=./buildspec.yml

codebuild_build.sh \
  -i aws/codebuild/amazon-linux-2-v-3:latest \
  -a /tmp/cb \
  -s `pwd` \
  -c \
  -b $BUILDFILE \
  -m

