#!/bin/bash

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Run Django collectstatic to gather static files before deployment
echo "Running collectstatic..."
python manage.py collectstatic --noinput
