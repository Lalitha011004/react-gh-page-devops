#!/bin/bash
set -e  # Exit on error

echo "🔹 Running Build Script"

# Build Docker image
docker build -t lalithambigai011004/task2 .

# Show built images
docker images

# Run the container
docker run -d -p 8085:80 --name task2test lalithambigai011004/task2

echo "✅ Container started successfully!"
