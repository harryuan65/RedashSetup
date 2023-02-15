#!/bin/bash

psql -c 'create role redash with login createdb;'
createdb redash_db
createdb redash_playground
docker-compose run --rm web create_db
