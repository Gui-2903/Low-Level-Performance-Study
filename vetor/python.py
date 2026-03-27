import time

start = time.time()
v = [i for i in range(10_000_000)]
end = time.time()

print("Tempo:", end - start)
