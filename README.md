# Submodule 1.1

This repository contains a simple C++ library that serves as Submodule 1.1 in the modular software architecture.

## Features

- Device connectivity management
- Status monitoring
- Data transmission to devices

## Building

This project uses CMake as its build system:

```bash
mkdir build
cd build
cmake ..
make
```

## Testing

Unit tests are implemented using Google Test framework:

```bash
cd build
ctest
```

Or run the test executable directly:

```bash
./build/submodule1.1_test
```

## Integration

This module is designed to be used as a component in Submodule 1.

## Requirements

- C++17 compatible compiler
- CMake 3.10 or higher
- Google Test (for running tests)
