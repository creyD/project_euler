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

function getPrimeArray(border)
	array = {}
	-- file = io.open("***REMOVED***", "w+")
	-- io.output(file)
	for i=2, border do
		if (isPrime(i)) then
			table.insert(array, i)
			-- io.write(i .. "\n")
		end
	end
	-- io.close(file)
	return array
end

print("Program started...")

factorArray = {}
array = getPrimeArray(600851475143)

for i=1, #array do
	if (number % array[i] == 0) then
		table.insert(factorArray, array[i])
		print(array[i])
	end
end

print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")

-- Solution: __________ (correct)
-- This script is slow af, like for real!... (Current time: )