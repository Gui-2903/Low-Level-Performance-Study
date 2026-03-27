#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    clock_t start = clock();

    int *v = malloc(10000000 * sizeof(int));
    for (int i = 0; i < 10000000; i++) {
        v[i] = i;
    }

    clock_t end = clock();
    printf("Tempo: %f\n", (double)(end - start) / CLOCKS_PER_SEC);

    free(v);
    return 0;
}