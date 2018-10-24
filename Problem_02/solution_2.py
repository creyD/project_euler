# Project Euler Problem 2
# Source: https://projecteuler.net/problem=2

import time
start_time = time.time()

all_fibo, summe = [1, 2], 2

while True:
	next_number = all_fibo[-1] + all_fibo[-2]
	if next_number >= 4000000:
		break
	elif next_number % 2 == 0:
		summe += next_number
	all_fibo[0] = all_fibo[1]
	all_fibo[1] = next_number

print(summe)
print("The script took %s seconds for execution" % (time.time() - start_time))

# Solution: 4613732 (Correct)
# Runtime: 6.103515625e-05 seconds