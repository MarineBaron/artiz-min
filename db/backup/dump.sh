#!/bin/bash

set -e

DUMP_NAME=db
DB_CONTAINER=db
POSTGRES_USER=artiz
POSTGRES_DATABASE=artiz

if [ -z "$1" ]
  then
    DUMP_NAME=$1
fi

if [ -z "$2" ]
  then
    DB_CONTAINER=$2
fi

if [ -z "$3" ]
  then
    POSTGRES_USER=$3
fi

if [ -z "$4" ]
  then
    POSTGRES_DATABASE=$4
fi


set -e

docker-compose exec --user $POSTGRES_USER $DB_CONTAINER pg_dump -C -c $POSTGRES_DATABASE | gzip > $DUMP_NAME.sql.gz
