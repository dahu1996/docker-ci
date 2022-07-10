#!/bin/env bash

echo Deploy Project

cd $HOME/docker-ci/

git pull

docker-compose down

docker-compose up -d --force-recreate --build