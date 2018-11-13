# Project Euler Problem 48
# Source: https://projecteuler.net/problem=48
import time
start_time = time.time()

summe = 0

for i in range(1, 1000):
	summe += i ** i

print(str(summe)[-10:])
print("The script took %s milliseconds for execution" % (time.time()*1000 - start_time*1000))
# Solution: 9110846700 (correct)
# Runtime: 9.87890625 milliseconds
