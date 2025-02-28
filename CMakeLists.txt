cmake_minimum_required(VERSION 3.20.1)
project(NVIDIA_SGEMM_PRACTICE CUDA CXX)

# Enable CUDA and find required packages
find_package(CUDA REQUIRED)
enable_language(CUDA)

# Set CUDA flags and properties
set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CUDA_STANDARD_REQUIRED ON)
set(CMAKE_CUDA_ARCHITECTURES 61)

include_directories(${CUDA_INCLUDE_DIRS})

# Enable debugging for CUDA
set(CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS} -g -G")

add_subdirectory(nvbench)
add_subdirectory(array_add)