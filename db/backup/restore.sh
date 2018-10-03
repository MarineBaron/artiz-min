#!/bin/bash

set -e

DUMP_NAME=db
DB_CONTAINER=db
POSTGRES_USER=artiz

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

gunzip $DUMP_NAME.sql.gz
cat $DUMP_NAME.sql | docker-compose exec -T $DB_CONTAINER psql -U $POSTGRES_USER -d postgres
gzip $DUMP_NAME.sql
