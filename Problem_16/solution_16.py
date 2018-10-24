# Euler Project 16
# Source: https://projecteuler.net/problem=16
import time
start_time = time.time()

a,summe = str(2**1000), 0
for i in range(0, len(a)):
	summe += int(a[i])
	
print(summe)
print("The script took %s seconds for execution" % (time.time() - start_time))

# Solution: 1366 (correct)
# Runtime: <0.0 seconds