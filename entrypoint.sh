#!/bin/sh

# Apply database migrations
python3 manage.py migrate

# Start the Django application
exec "$@"

