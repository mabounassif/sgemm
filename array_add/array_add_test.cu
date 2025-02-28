#pragma once

#include <stdio.h>
#include <cuda_runtime.h>
#include <cublas_v2.h>

void test_kernel(int kernel_num, int m, int n, int k, float alpha, float *A, float *B, float beta, float *C, cublasHandle_t handle);