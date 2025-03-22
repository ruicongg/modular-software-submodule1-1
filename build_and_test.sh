#!/bin/bash
set -e  # Exit on error

echo "Building and testing Submodule 1.1"

# Create build directory if it doesn't exist
if [ ! -d "build" ]; then
    echo "Creating build directory..."
    mkdir build
fi

# Navigate to build directory
cd build

# Configure with CMake
echo "Configuring with CMake..."
cmake ..

# Build the project
echo "Building project..."
make

# Run tests
echo "Running tests..."
ctest --output-on-failure

# Check test results
if [ $? -eq 0 ]; then
    echo "All tests passed successfully!"
else
    echo "Some tests failed. See above for details."
    exit 1
fi

echo "Build and test completed successfully!" 