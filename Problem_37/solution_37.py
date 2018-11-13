# Project Euler Problem 37
# Source: https://projecteuler.net/problem=37
import time
start_time = time.time()

def isPrime(number):
	# Manually filtering number 1
	if number == 1:
		return False
	# Take a shortcut if it is a even number
	if number % 2 == 0 and number > 2:
		return False
	# Check for each number under the number if it is dividable, start at 3 bc, increment by 2 bcs only uneven numbers can be prime
	for i in range(3, int(number ** 0.5) + 1, 2):
		if number % i == 0:
			return False
	return True

def checkInteresting(number):
	# Check from right to left
	for i in range(1,len(str(number))):
		if not isPrime(int(str(number)[:-i])) or not isPrime(int(str(number)[i:])):
			return False
	return True

summe, hitCount, iterator = 0, 0, 8

while hitCount < 11:
	if isPrime(iterator):
		if checkInteresting(iterator):
			summe += iterator
			hitCount += 1
	iterator += 1

print(summe)

print("The script took %s milliseconds for execution" % (time.time()*1000 - start_time*1000))
# Solution: 748317 (correct)
# Runtime: 2022.440185546875 milliseconds
