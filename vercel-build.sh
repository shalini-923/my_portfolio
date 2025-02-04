#!/bin/bash

# Ensure that the required Python version (3.11.3) is available
echo "Setting up Python environment..."

# Update the package list and install prerequisites for building Python
apt-get update
apt-get install -y software-properties-common

# Add the deadsnakes PPA to get the specific version of Python
add-apt-repository ppa:deadsnakes/ppa
apt-get update

# Install Python 3.11.3 specifically
apt-get install -y python3.11 python3.11-venv python3.11-dev python3-pip

# Ensure that pip points to the correct version
ln -sf /usr/bin/python3.11 /usr/bin/python3
ln -sf /usr/bin/pip3.11 /usr/bin/pip3

# Install dependencies
echo "Installing dependencies..."
pip3 install -r requirements.txt

# Run Django collectstatic to gather static files before deployment
echo "Running collectstatic..."
python3 manage.py collectstatic --noinput
