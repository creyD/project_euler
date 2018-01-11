-- Project Euler Problem 20 (Code Name: RIP Lua, using Python for big numbers)
-- Source: https://projecteuler.net/problem=20
function getFactorial(n)
	for i=1, n do
		n = n * i
	end
	return n
end
function getSumOfDigits(number)
	sum = 0
	for i=1, string.len(number) do
		sum = sum + string.sub(number,i,i)
	end
	return sum
end
print(getSumOfDigits(getFactorial(100)))

-- THIS IS JUST A CONCEPT
-- It would work however if the factorial of 100 wouldn't be that large so Lua saves it as x * 10^y in string format