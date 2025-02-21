#!/bin/bash
set -e

echo "🔧 Starting build process..."

# Install Python dependencies
echo "📦 Installing Python packages..."
python -m pip install --upgrade pip
pip install -r requirements.txt --no-cache-dir

# Start application
echo "🚀 Starting application..."
python app.py
