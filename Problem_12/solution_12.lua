-- Project Euler Problem 12
-- Task: https://projecteuler.net/problem=12

i = 2 finished = false previousNumber = 1

function getDivisors(currentNumber)
	-- Used counter instead of an array to get Lua script to work with 32 bits
	counter = 0
	for i=1, currentNumber do
		if(currentNumber % i == 0) then
			counter = counter + 1
			if counter >= 500 then
				return true
			end
		end
	end
	return false
end

repeat
	currentNumber = previousNumber + i
	if getDivisors(currentNumber) then
		finished = true
	else
		print(currentNumber)
		previousNumber = currentNumber
		i = i + 1
	end
until finished

print("The first triangle number with over five hundred divisors is " .. currentNumber)
print("This programm took " .. os.clock() .. " seconds (" .. os.clock()/60 .. " minutes) for execution.")

-- Solution: PENDING
-- Runtime: PENDING