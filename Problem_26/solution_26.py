maximum = 0
returnvalue = 0
def checkSame(number):
	start = number[0]
	for i in range(len(number)):
		if number[i] != start:
			return False
	return True

def countSubString(string, sub_string):
    return len([i for i in range(len(string)) if string[i:i+len(sub_string)] == sub_string])

def checkPatternLength(checkstuff):
	for i in range(len(checkstuff)):
		if countSubString(checkstuff, checkstuff[:len(checkstuff) - i]) > 1:
			return (len(checkstuff) - i)
	return False

for i in range(2,1000):
	a = str(float(1) / i)[2:]
	if not (i % 2 == 0 or len(a) < 3 or checkSame(a)):
		if checkPatternLength(a) > maximum:
			maximum = checkPatternLength(a)
			returnvalue = i
print(str(returnvalue) + ' ' + str(checkPatternLength(a)))
