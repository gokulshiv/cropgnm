#!/bin/bash
set -e

echo "🚀 Starting build process..."

# Setup Python environment
echo "🐍 Setting up Python 3.8.10..."
pyenv install 3.8.10
pyenv global 3.8.10

# Install dependencies
echo "📦 Installing packages..."
python -m pip install --upgrade pip
pip install -r requirements.txt --no-cache-dir

echo "✅ Build completed!"
