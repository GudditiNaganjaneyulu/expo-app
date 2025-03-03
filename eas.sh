#!/bin/bash

# Build for Development
echo "Starting Development Build..."
eas build --platform android --non-interactive --profile development
if [ $? -eq 0 ]; then
    echo "Development Build Succeeded!"
else
    echo "Development Build Failed!"
    exit 1
fi

# Build for Staging
echo "Starting Staging Build..."
eas build --platform android --non-interactive --profile staging
if [ $? -eq 0 ]; then
    echo "Staging Build Succeeded!"
else
    echo "Staging Build Failed!"
    exit 1
fi

# Build for Testing
echo "Starting Testing Build..."
eas build --platform android --non-interactive --profile testing
if [ $? -eq 0 ]; then
    echo "Testing Build Succeeded!"
else
    echo "Testing Build Failed!"
    exit 1
fi

# Build for Production
echo "Starting Production Build..."
eas build --platform android --non-interactive --profile production
if [ $? -eq 0 ]; then
    echo "Production Build Succeeded!"
else
    echo "Production Build Failed!"
    exit 1
fi
