#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: ./deploy-stack.sh stack-name codecommit-repo-name"
  exit 1
fi

aws cloudformation deploy \
  --template-file ./cloudformation.yml \
  --capabilities CAPABILITY_NAMED_IAM  \
  --stack-name $1 \
  --parameter-overrides \
    CodeCommitRepoName=$2
