add_executable(array_add_bench.out array_add_bench.cu)
add_executable(array_add_test.out array_add_test.cu)

# Set output directories
set_target_properties(array_add_bench.out PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}")
set_target_properties(array_add_test.out PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}")

# Link CUDA libraries and nvbench
target_link_libraries(array_add_bench.out PRIVATE nvbench::main)
target_link_libraries(array_add_test.out PRIVATE ${CUDA_LIBRARIES} ${CUDA_cublas_LIBRARY})