#!/bin/sh

set -e

host="$1"
shift
cmd="$@"

until pg_isready -h "$host"; do
  echo "Waiting for postgres at $host..."
  sleep 1
done

echo "Postgres is ready, executing command..."
exec $cmd
