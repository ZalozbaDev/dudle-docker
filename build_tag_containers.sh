#!/bin/bash


docker build -t dudle-app .

pushd scripts/maintenance/

docker build -t dudle-maint .

popd

# docker image tag dudle-app:latest registry/dudle-app:0.0.2
# docker image tag dudle-maint:latest registry/dudle-maint:0.0.2


