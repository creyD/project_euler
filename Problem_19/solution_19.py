# Project Euler Problem 19 (Code Name: Calendar Brainfuck)
# Source: https://projecteuler.net/problem=19
import time
from datetime import date
start_time = time.time()

counter = 0
for i in range(1901, 2001):
	for j in range(1, 13):
		if date(i, j, 1).isoweekday() == 7:
			counter += 1
print(counter)
print("The script took %s milliseconds for execution" % (time.time()*1000 - start_time*1000))

# Solution: 171 (correct)
# Runtime: ~1 millisecond