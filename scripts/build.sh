#!/bin/bash
set -e  # Exit on any error

# Clear environment
echo "🔄 Clearing previous builds..."
rm -rf node_modules
rm -rf __pycache__

# Update pip and install dependencies
echo "📦 Installing Python packages..."
python -m pip install --upgrade pip
pip install -r requirements.txt --no-cache-dir

# Start application
echo "🚀 Starting application..."
python app.py

