import time

N = 200

A = [[1]*N for _ in range(N)]
B = [[1]*N for _ in range(N)]
C = [[0]*N for _ in range(N)]

start = time.time()

for i in range(N):
    for j in range(N):
        for k in range(N):
            C[i][j] += A[i][k] * B[k][j]

end = time.time()

print("Tempo:", end - start)