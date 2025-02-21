#!/bin/bash

# Update pip to latest version
echo "Updating pip..."
python -m pip install --upgrade pip

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt --no-cache-dir

# Make the app executable
echo "Setting up application..."
chmod +x app.py

# Start the application using gunicorn
echo "Starting application with gunicorn..."
gunicorn app:app --bind 0.0.0.0:$PORT
