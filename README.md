# CUDA SGEMM Practice

A CUDA implementation of SGEMM (Single-precision General Matrix Multiplication) with benchmarking using nvbench.

## Prerequisites

- CUDA Toolkit 11.1 or newer
- CMake 3.23.1 or newer
- A compatible C++ compiler (gcc 7-12, clang 9-18, or MSVC 2019-2022)
- Git

## Setup

1. Clone the repository:

```bash
git clone https://github.com/yourusername/cuda-sgemm-practice.git
cd cuda-sgemm-practice
```

2. Initialize and update the nvbench submodule:

```bash
git submodule init
git submodule update
```

3. Build the project:

```bash
mkdir build
cd build
cmake ..
make
```

## Usage

Run the benchmark:

```bash
./sgemm
```

## License

This project is open source and available under the [MIT License](LICENSE).
