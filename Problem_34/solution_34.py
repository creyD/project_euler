# Project Euler Problem 34
# Source: https://projecteuler.net/problem=34
import time
start_time = time.time()

summe = 0

def fakultaet(number):
	if number == 0:
		return 1
	return fakultaet(number - 1) * number

def checkCuriousity(number):
	summeFakultaeten = 0
	for i in range(len(str(number))):
		summeFakultaeten += fakultaet(int(str(number)[i]))
	if summeFakultaeten == number:
		return True
	return False

i = 3

while True:
	if checkCuriousity(i):
		summe += i
		print(summe)
	i += 1

print("The script took %s milliseconds for execution" % (time.time()*1000 - start_time*1000))
# Solution: 40730 (correct)
# Runtime: 9.87890625 milliseconds
