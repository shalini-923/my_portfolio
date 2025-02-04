#!/bin/bash
# Run Django collectstatic to gather static files before deployment
echo "Running collectstatic..."
python manage.py collectstatic --noinput
