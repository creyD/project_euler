# Project Euler Problem 1
# Source: https://projecteuler.net/problem=1

import time
start_time = time.time()

summe = 0
for i in range(1000):
	if (i % 3 == 0) or (i % 5 == 0):
		summe += i

print(summe)
print("The script took %s seconds for execution" % (time.time() - start_time))

# Solution: 233168 (still correct)
# Runtime: 0.00025200843811 seconds