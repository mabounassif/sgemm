#include "utils.cuh"
#include "kernels.cuh"

void test_kernel(int kernel_num, int m, int n, int k, float alpha, float *A, float *B, float beta, float *C, cublasHandle_t handle)
{
    switch (kernel_num)
    {
    case 1:
        kernel_1(A, B, C, m, n, k);
        break;
    default:
        printf("Invalid kernel number\n");
        break;
    }
}