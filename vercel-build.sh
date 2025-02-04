#!/bin/bash

# Ensure that Python is available
echo "Setting up Python environment..."
apt-get update
apt-get install -y python3 python3-pip

# Install dependencies
echo "Installing dependencies..."
pip3 install -r requirements.txt

# Run Django collectstatic to gather static files before deployment
echo "Running collectstatic..."
python3 manage.py collectstatic --noinput
