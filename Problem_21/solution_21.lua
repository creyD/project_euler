-- Project Euler Problem 21 (Code Name: Whatever amicable numbers are ~)
-- Source: https://projecteuler.net/problem=21
sum = 0

-- Get sum of proper divisors
function d(number)
	-- divisors = {}
	sum = 0
	for i=1, number - 1 do
		if number % i == 0 then
			-- table.insert(divisors, i)
			sum = sum + i
		end
	end
	return sum
end

for i=1, 10000 do
	if d(d(i)) == i and d(i) ~= i then
		sum = sum + i
	end
end
print("The sum is: " .. sum)
print("This programm took " .. os.clock()*1000 .. " milliseconds (" .. os.clock() .. " seconds) for execution.")

-- Solution: 31626 (correct)
-- Runtime: 2.24 seconds
-- Potentials/ Flaws: