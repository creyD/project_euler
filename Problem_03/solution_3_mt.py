# Project Euler Problem 3 - Multithreaded
# Source: https://projecteuler.net/problem=3

import time
import _thread
start_time = time.time()

def isPrime(number):
	if number % 2 == 0 and number >= 2:
		return False
	for i in range(3, int(number ** 0.5) + 1, 2):
		if number % i == 0:
			return False
	return True

def calcThread(rangeBegin, rangeEnd, starting_number):
	print('Thread started (' + str(rangeBegin) + '-' + str(rangeEnd) + ')')
	for i in range(rangeBegin, rangeEnd):
		if (starting_number % i == 0) and isPrime(i):
			largestFactor = i
	return largestFactor

largestFactor, starting_number = 0, 600851475143

goal = round(starting_number / 2)
cache = []

_thread.start_new_thread(cache.append(calcThread(2, round(goal/8), starting_number)))
_thread.start_new_thread(cache.append(calcThread(round(goal/8) + 1, round(goal/4), starting_number)))
_thread.start_new_thread(cache.append(calcThread(round(goal/4) + 1, 3 * round(goal/8), starting_number)))
_thread.start_new_thread(cache.append(calcThread(3 * round(goal/8) + 1, round(goal/2), starting_number)))
_thread.start_new_thread(cache.append(calcThread(round(goal/2) + 1, 5 * round(goal/8), starting_number)))
_thread.start_new_thread(cache.append(calcThread(5 * round(goal/8) + 1, 3 * round(goal/4), starting_number)))
_thread.start_new_thread(cache.append(calcThread(3 * round(goal/4) + 1, 7 * round(goal/8), starting_number)))
_thread.start_new_thread(cache.append(calcThread(7 * round(goal/8) + 1, goal, starting_number)))

print(max(cache))

print("The script took %s seconds for execution" % (time.time() - start_time))
