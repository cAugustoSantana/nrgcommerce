#!/bin/bash
set -e

echo "Starting Railway build process..."

# Navigate to the nrgcommerce directory
cd nrgcommerce

# Install dependencies with error handling
echo "Installing dependencies..."
yarn install --frozen-lockfile --silent --ignore-engines --non-interactive || {
    echo "Dependency installation failed, trying without frozen lockfile..."
    yarn install --silent --ignore-engines --non-interactive
}

# Build the application
echo "Building application..."
yarn build

echo "Build completed successfully!"
