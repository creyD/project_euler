# Project Euler Problem 2
# Source: https://projecteuler.net/problem=2

import time
start_time = time.time()

fibonacciNumbers, summe = [1, 2], 2

while True:
	bla = fibonacciNumbers[-1] + fibonacciNumbers[-2]
	if bla >= 4000000:
		break
	elif bla % 2 == 0:
		summe += bla
	fibonacciNumbers.append(bla)
		
print(summe)
print("The script took %s seconds for execution" % (time.time() - start_time))

# Solution: 233168 (still correct)
# Runtime: 0.00025200843811 seconds