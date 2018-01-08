-- Project Euler Problem 3
-- Task: The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143?

function isPrime(number)
	for i=2, math.pow(number, 0.5) do
		if (number % i == 0) then
			return false
		end
	end
	return true
end

print("Program started...")
bigNumber = 600851475143 -- Starting value
largestFactor = 0

for i=2, bigNumber/2 do
	if isPrime(i) then
		if (bigNumber % i == 0) then
			if (i > largestFactor) then
				print(i)
				largestFactor = i
			end
		end
	end
end

print("The largest prime factor of " .. bigNumber .. " is " .. largestFactor)
print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")

-- Solution: 6857 (correct)
-- Script found the solution after a few seconds but checked numbers long time after that... (Overall runtime: more than 5h...)