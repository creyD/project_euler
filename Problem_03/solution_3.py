# Project Euler Problem 3
# Source: https://projecteuler.net/problem=3

import time
start_time = time.time()

def isPrime(number):
	if number % 2 == 0 and number >= 2:
		return False
	for i in range(3, int(number ** 0.5) + 1, 2):
		if number % i == 0:
			return False
	return True

largestFactor, starting_number = 0, 600851475143

for i in range(2, round(starting_number/3)):
	if (starting_number % i == 0) and isPrime(i):
		largestFactor = i

print(i)

print("The script took %s seconds for execution" % (time.time() - start_time))

# Solution: 6857 (Correct)
# Runtime: 