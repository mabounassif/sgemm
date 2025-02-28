cmake_minimum_required(VERSION 3.0)
project(NVIDIA_SGEMM_PRACTICE)

set(CMAKE_CXX_FLAGS "-O1 -std=c++11")

set(CUDA_NVCC_FLAGS -g;-G;-arch=compute_61;-code=sm_61)

find_package(CUDA REQUIRED)

include_directories(${CUDA_INCLUDE_DIRS})
include_directories(${PROJECT_SOURCE_DIR}/src)
aux_source_directory(${PROJECT_SOURCE_DIR}/src SRC)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR})
CUDA_ADD_EXECUTABLE(sgemm main.cu ${SRC})

# link cudart cublas
target_link_libraries(sgemm ${CUDA_LIBRARIES} ${CUDA_cublas_LIBRARY})
