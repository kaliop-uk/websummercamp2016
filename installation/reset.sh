#!/usr/bin/env bash

# Bring back the computer (Docker host) to a pristine status:
# remove all docker containers and images and data created at runtime

echo Removing all docker containers and images...

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)

# remove data

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"

cd $DIR

echo Removing mysql database...

rm -rf data/mysql/*

echo Removing eZ caches...

rm -rf site/ezpublish/cache/*
rm -rf site/ezpublish/logs/*
rm -rf site/ezpublish_legacy/var/log/*
rm -rf site/ezpublish_legacy/var/cache/*
