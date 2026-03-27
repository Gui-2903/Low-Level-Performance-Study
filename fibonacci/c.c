#include <stdio.h>
#include <time.h>

int fib(int n) {
    if (n <= 1) return n;
    return fib(n-1) + fib(n-2);
}

int main() {
    clock_t start = clock();
    printf("%d\n", fib(40));
    clock_t end = clock();

    printf("Tempo: %f\n", (double)(end - start) / CLOCKS_PER_SEC);
    return 0;
}