-- Project Euler Problem 3
-- Task: The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143?
-- Stategy: From 600 851 475 143 counting downwards check each number if 600851475143 is dividable by the number and whether it is prime or not. Return the first result.
-- First strategy was to count from 1 and get a table of numbers, but it turned out to be impossible for my computers to calculate in a time (longest run was 5h)

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
	-- file = io.open("PATH", "w+")
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
path = "PATH"
print("Program started...")
bigNumber = 600851475143
factorArray = {}
file = io.open(path, "a+")
io.output(file)

for i=8462696833, 600851475142 do
	if (600851475143 % i == 0) then
		table.insert(factorArray, i)
		io.write(i .. "\n")
		print(i)
	end
end

io.close(file)

print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")

-- Solution: __________ (correct)
-- This script is slow af, like for real!... (Current time: )