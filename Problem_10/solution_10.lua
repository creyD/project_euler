-- Project Euler Problem 10
-- Task: https://projecteuler.net/problem=10

function isPrime(number)
	for i=2, math.pow(number, 0.5) do
		if (number % i == 0) then
			return false
		end
	end
	return true
end

sum = 0 i = 2
repeat
	if isPrime(i) then
		sum = sum + i
	end
	i = i + 1
until i == 2000000

print(sum)

print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")

-- Runtime: approx. 6 sec
-- Solution: 142913828922 (correct)