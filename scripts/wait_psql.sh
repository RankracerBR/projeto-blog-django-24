#!/bin/sh

while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
    echo "🟡 Waiting for Postgres Database Startup ($POSTGRES_HOST $POSTGRES_PORT) ..." &
    sleep 0.1
done

echo "🟢 Database Started Succesfully ($POSTGRES_HOST:$POSTGRES_PORT)"