#!/bin/bash

set -e

DUMP_NAME=db
DB_CONTAINER=db
POSTGRES_USER=artiz
POSTGRES_DATABASE=artiz

if [ ! -z "$1" ]
  then
    DUMP_NAME=$1
fi

if [ ! -z "$2" ]
  then
    DB_CONTAINER=$2
fi

if [ ! -z "$3" ]
  then
    POSTGRES_USER=$3
fi

if [ ! -z "$4" ]
  then
    POSTGRES_DATABASE=$4
fi


set -e

# echo $DUMP_NAME
# echo $DB_CONTAINER
# echo $POSTGRES_USER
# echo $POSTGRES_DATABASE

docker-compose exec $DB_CONTAINER pg_dump -U $POSTGRES_USER -C -c --if-exists $POSTGRES_DATABASE | gzip > $DUMP_NAME.sql.gz
