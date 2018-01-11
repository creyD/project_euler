# Project Euler Problem 20 (Code Name: RIP Lua, using Python for big numbers)
# Source: https://projecteuler.net/problem=20

import time
start_time = time.time()

def getFactorial(n):
	for i in range(1, n):
		n = n * i
	return n

def getSumOfDigits(number):
	summe = 0
	number = str(number)
	for i in range(0, len(number)):
		summe = summe + int(number[i])
	return summe

print(getSumOfDigits(getFactorial(100)))
print("The script took %s seconds for execution" % (time.time() - start_time))

# Solution: 648 (correct)
# Runtime: 0.0 seconds