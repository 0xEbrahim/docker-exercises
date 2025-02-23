#!/bin/sh

docker container run -t --rm -w /work -v ${pwd}:/work node:6.9.1 npm i
docker-compose up -d web db
docker-compose up test
docker-compose down