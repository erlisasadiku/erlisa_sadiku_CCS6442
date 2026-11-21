#!/bin/sh
until pg_isready -h postgres -p 5432
do
    echo "Database is not ready, checking again.."
    sleep 2
done

echo "Database is ready"