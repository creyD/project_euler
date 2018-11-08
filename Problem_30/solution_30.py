numbers = []
i = 2
barrier = (9 ** 5)

while i >= barrier:
	sumOfChars = 0
	for j in range(len(str(i))):
		k = str(i)
		sumOfChars += int(k[j]) ** 5
	if sumOfChars == i:
		numbers.append(i)
		barrier = (9 ** 5) * len(numbers)
		print(i)
	i += 1

print(sum(numbers))
