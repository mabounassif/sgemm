cmake_minimum_required(VERSION 3.20.1)
project(NVIDIA_SGEMM_PRACTICE CUDA CXX)

add_subdirectory(nvbench)
add_subdirectory(array_add)

add_executable(main main.cu)

target_link_libraries(main PRIVATE cuda)