#!/bin/bash
set -e  # Exit on error

echo "Building and testing Submodule 1_1"

# Remove build directory if it exists
if [ -d "build" ]; then
    echo "Removing existing build directory..."
    rm -rf build
fi

# Create build directory
echo "Creating build directory..."
mkdir build

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