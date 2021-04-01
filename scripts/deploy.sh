#!/bin/bash

aws s3 cp ./cloudformation_template.yml \
  s3://contents.blog.jicoman.info/cloudformation/create-custom-ecs-gpu-optimized-ami.yml \
  --content-type "application/yaml"

aws s3api put-object-acl --bucket contents.blog.jicoman.info --key cloudformation/create-custom-ecs-gpu-optimized-ami.yml --acl public-read
