#!/bin/bash


#!!!!!!!!!!!!! check embedded GIT in cgi/ subfolder first (dudle repo!)

docker build -t dudle-app .

pushd scripts/maintenance/

docker build -t dudle-maint .

popd

# docker image tag dudle-app:latest registry/dudle-app:0.0.3
# docker image tag dudle-maint:latest registry/dudle-maint:0.0.2


