#include <stdio.h>
#include <time.h>

#define N 200

int main() {
    int A[N][N], B[N][N], C[N][N];

    clock_t start = clock();

    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            for (int k = 0; k < N; k++)
                C[i][j] += A[i][k] * B[k][j];

    clock_t end = clock();

    printf("Tempo: %f\n", (double)(end - start) / CLOCKS_PER_SEC);
    return 0;
}