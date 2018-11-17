# Project Euler Problem 44
# Source: https://projecteuler.net/problem=44
import time
start_time = time.time()

def get_pentagonal(number):
	return int(number * ((3 * number - 1) / 2))

def check_pentagonal(number):
	for i in range(int(number/2)):
		if get_pentagonal(i) == number:
			return True
	return False

testing = mins = 50000
for i in range(int(testing)):
	for j in range(int(testing)):
		a = get_pentagonal(i)
		b = get_pentagonal(j)
		if check_pentagonal(a + b) and check_pentagonal(a - b):
			if abs(a - b) < mins:
				mins = abs(a - b)
				print(mins)

print(mins)

print("The script took %s milliseconds for execution" % (time.time()*1000 - start_time*1000))
# Solution: 748317 (correct)
# Runtime: 2022.440185546875 milliseconds
