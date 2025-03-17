#!/bin/bash

# Enable error handling
set -e

# Get current user ID and group ID
export USER_ID=$(id -u)
export GROUP_ID=$(id -g)

echo "🔹 USER_ID: $USER_ID"
echo "🔹 GROUP_ID: $GROUP_ID"

# Ensure necessary directories exist
echo "🛠 Creating required directories..."
mkdir -p ./app_data ./db_data

# Fix ownership before starting Docker
echo "🔄 Fixing permissions..."
sudo chown -R $USER_ID:$GROUP_ID ./app_data ./db_data
sudo chmod -R 775 ./app_data ./db_data

# Run Docker Compose
echo "🚀 Starting Docker Compose..."
docker compose up --build -d || { echo "❌ Docker Compose failed!"; exit 1; }

# Verify containers are running
echo "✅ Docker containers are running!"
docker ps
