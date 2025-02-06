# Install dependencies
echo "Installing dependencies..."
pip3 install -r requirements.txt

# Run Django collectstatic to gather static files before deployment
echo "Running collectstatic..."
python3 manage.py collectstatic --noinput
