#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

python proger/manage.py flush --no-input
python proger/manage.py migrate
python proger/manage.py initadmin


exec "$@"