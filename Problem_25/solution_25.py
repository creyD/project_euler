# Project Euler Problem 25 (Code Name: Fibo II)
# Source: https://projecteuler.net/problem=25
import time
start_time = time.time()

def getNext(prev1, prev2):
	return prev1 + prev2

fibonacci, i = [1,1], 3

while True:
	value = getNext(fibonacci[len(fibonacci)-2], fibonacci[len(fibonacci)-1])
	fibonacci.insert(i, value)
	i += 1
	if len(str(value)) >= 1000:
		break

print(len(fibonacci))
print("The script took %s milliseconds for execution" % (time.time()*1000 - start_time*1000))
# Solution: 4782 (correct)
# Runtime: 156.2 milliseconds
