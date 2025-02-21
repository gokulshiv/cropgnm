#!/bin/bash
set -e

echo "🔧 Starting build process..."

# Install and build frontend
npm install
npx rollup -c

# Install Python dependencies
python -m pip install -r requirements.txt

echo "✅ Build completed!"
