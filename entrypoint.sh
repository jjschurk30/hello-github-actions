#!/usr/bin/env bash

docker-compose run drop-test-db
docker-compose run initialize-test-db
docker-compose run patch-test-db

docker-compose build test
docker-compose run test
