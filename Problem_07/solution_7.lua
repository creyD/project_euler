-- Project Euler Problem 7
-- Task: https://projecteuler.net/problem=7

function isPrime(number)
	for i=2, math.pow(number, 0.5) do
		if (number % i == 0) then
			return false
		end
	end
	return true
end

function getPrime()
	counter = 0
	i = 2
	repeat
		if isPrime(i) then
			counter = counter + 1
		end
		i = i + 1
	until counter>=10001
	return i - 1
end

print(getPrime())

-- Solution: 104743 (correct)